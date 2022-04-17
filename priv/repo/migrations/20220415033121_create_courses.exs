defmodule GAT.Repo.Migrations.CreateCourses do
  use Ecto.Migration

  def change do
    create table(:courses, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :description, :text
      add :duration, :string
      add :duration_type, :string
      add :excerpt, :string
      add :featured_image, :string
      add :inclusions, :text
      add :price, :decimal
      add :published, :boolean, default: false, null: false
      add :requirements, {:array, :string}
      add :slug, :string
      add :structure, :text
      add :title, :string
      add :translated, :boolean, default: false, null: false
      add :user_id, references(:users, on_delete: :nothing, type: :binary_id)

      timestamps()
    end

    create unique_index(:courses, [:slug], name: :index_course_slug_must_be_unique)
  end
end
