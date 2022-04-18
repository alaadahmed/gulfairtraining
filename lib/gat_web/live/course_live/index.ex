defmodule GATWeb.CourseLive.Index do
  use GATWeb, :live_view

  @impl true
  def handle_params(_params, _url, socket) do
    %{page: current_page} = socket.assigns

    socket =
      socket
      |> assign(:page_title, current_page)
      |> assign(:courses, list_courses())

    {:noreply, socket}
  end

  defp list_courses do
    GAT.Training.Data.list_courses()
  end
end
