defmodule GAT.TrainingFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `GAT.Training` context.
  """

  @doc """
  Generate a course.
  """
  def course_fixture(attrs \\ %{}) do
    {:ok, course} =
      attrs
      |> Enum.into(%{
        description: "some description",
        duration: "some duration",
        price: "some price",
        requirements: [],
        title: "some title"
      })
      |> GAT.Training.create_course()

    course
  end
end
