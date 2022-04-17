defmodule GAT.TrainingTest do
  use GAT.DataCase

  alias GAT.Training

  describe "courses" do
    alias GAT.Training.Course

    import GAT.TrainingFixtures

    @invalid_attrs %{description: nil, duration: nil, price: nil, requirements: nil, title: nil}

    test "list_courses/0 returns all courses" do
      course = course_fixture()
      assert Training.list_courses() == [course]
    end

    test "get_course!/1 returns the course with given id" do
      course = course_fixture()
      assert Training.get_course!(course.id) == course
    end

    test "create_course/1 with valid data creates a course" do
      valid_attrs = %{description: "some description", duration: "some duration", price: "some price", requirements: [], title: "some title"}

      assert {:ok, %Course{} = course} = Training.create_course(valid_attrs)
      assert course.description == "some description"
      assert course.duration == "some duration"
      assert course.price == "some price"
      assert course.requirements == []
      assert course.title == "some title"
    end

    test "create_course/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Training.create_course(@invalid_attrs)
    end

    test "update_course/2 with valid data updates the course" do
      course = course_fixture()
      update_attrs = %{description: "some updated description", duration: "some updated duration", price: "some updated price", requirements: [], title: "some updated title"}

      assert {:ok, %Course{} = course} = Training.update_course(course, update_attrs)
      assert course.description == "some updated description"
      assert course.duration == "some updated duration"
      assert course.price == "some updated price"
      assert course.requirements == []
      assert course.title == "some updated title"
    end

    test "update_course/2 with invalid data returns error changeset" do
      course = course_fixture()
      assert {:error, %Ecto.Changeset{}} = Training.update_course(course, @invalid_attrs)
      assert course == Training.get_course!(course.id)
    end

    test "delete_course/1 deletes the course" do
      course = course_fixture()
      assert {:ok, %Course{}} = Training.delete_course(course)
      assert_raise Ecto.NoResultsError, fn -> Training.get_course!(course.id) end
    end

    test "change_course/1 returns a course changeset" do
      course = course_fixture()
      assert %Ecto.Changeset{} = Training.change_course(course)
    end
  end
end
