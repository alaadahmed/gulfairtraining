defmodule GATWeb.CourseLive.Index do
  use GATWeb, :live_view

  alias GAT.Training
  alias GAT.Training.Course

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, :courses, list_courses())}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  defp apply_action(socket, :edit, %{"id" => id}) do
    socket
    |> assign(:page_title, "Edit Course")
    |> assign(:course, Training.get_course!(id))
  end

  defp apply_action(socket, :new, _params) do
    socket
    |> assign(:page_title, "New Course")
    |> assign(:course, %Course{})
  end

  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:page_title, socket.assigns.page)
    |> assign(:course, nil)
  end

  @impl true
  def handle_event("delete", %{"id" => id}, socket) do
    course = Training.get_course!(id)
    {:ok, _} = Training.delete_course(course)

    {:noreply, assign(socket, :courses, list_courses())}
  end

  defp list_courses do
    Training.list_courses()
  end
end
