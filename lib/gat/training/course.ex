defmodule GAT.Training.Course do
  defstruct [
    :id,
    :title,
    :description,
    :duration,
    :duration_type,
    :excerpt,
    :featured_image,
    :inclusions,
    :installments,
    :notes,
    :price,
    :pay_in_advance,
    :requirements,
    :slug,
    :structure
  ]

  alias __MODULE__

  @doc false
  def slugify_title(%Course{} = course) do
    case course.slug do
      nil -> slugify(course.title)
      slug -> slug
    end
  end

  defp slugify(title) when is_binary(title) do
    title
    |> String.downcase()
    |> String.replace(~r/[^a-z0-9\s-]/, "")
    |> String.replace(~r/(\s|-)+/, "-")
  end

  def excerpt_from_description(%Course{} = course) do
    case course.excerpt do
      nil -> add_excerpt(course.description)
      excerpt -> excerpt
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
