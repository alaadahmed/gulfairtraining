defmodule GAT.Training.Course do
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query
  import GATWeb.Gettext, only: [dgettext: 2]
  use EctoTranslate, [:title, :description, :excerpt, :requirements]

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  @duration_types ~w(month week day)a
  schema "courses" do
    field :description, :string
    field :duration, :string
    field :duration_type, Ecto.Enum, values: @duration_types
    field :excerpt, :string
    field :featured_image, :string
    field :inclusions, :string
    field :price, :decimal
    field :published, :boolean, default: false
    field :requirements, {:array, :string}
    field :slug, :string
    field :strucutre, :string
    field :title, :string
    field :translated, :boolean

    belongs_to(:user, GAT.Accounts.User, on_replace: :nilify)

    timestamps()
  end

  @all ~w(description duration duration_type excerpt featured_image inclusions price published requirements slug strucutre title translated)a
  @required ~w(title description price)a
  @doc false
  def changeset(course, attrs) do
    course
    |> cast(attrs, @all)
    |> validate_required(@required)
    |> slugify_title()
    |> excerpt_from_description()
    |> validate_required([:slug, :excerpt])
    |> unique_constraint(:slug,
      name: :index_course_slug_must_be_unique,
      message: dgettext("errors", "Course's slug must be unique, change course's slug")
    )
  end

  def translate_changeset(course, attrs) do
    course
    |> cast(attrs, [:title, :description, :excerpt, :requirements])
    |> validate_required([:title], message: "Please enter a title")
    |> validate_required([:description], message: "Please enter a description")
    |> validate_required([:requirements], message: "Please enter requirements")
    |> excerpt_from_description()
    |> validate_required([:excerpt], message: "Please enter an excerpt or enter description first")
  end

  def change_translate(course, attrs) do
    course
    |> cast(attrs, [:translated])
  end

  def change_publish(course, attrs) do
    course
    |> cast(attrs, [:published])
  end

  defp slugify_title(changeset) do
    case fetch_change(changeset, :title) do
      {:ok, new_title} -> put_change(changeset, :slug, slugify(new_title))
      :error -> changeset
    end
  end

  defp slugify(title) when is_binary(title) do
    title
    |> String.downcase()
    |> String.replace(~r/[^a-z0-9\s-]/, "")
    |> String.replace(~r/(\s|-)+/, "-")
  end

  defp excerpt_from_description(changeset) do
    case fetch_change(changeset, :description) do
      {:ok, short_description} -> put_change(changeset, :excerpt, add_excerpt(short_description))
      :error -> changeset
    end
  end

  defp add_excerpt(content) do
    content
    |> String.replace(~r/\s{2,}/, " ")
    |> String.replace("\n", " ")
    |> String.replace(~r/<[^>]*>/, "")
    |> String.trim()
    |> String.split(" ")
    |> Enum.reject(&(String.length(&1) == 0))
    |> Enum.take(20)
    |> Enum.join(" ")
  end
end
