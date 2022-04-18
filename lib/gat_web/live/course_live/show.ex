defmodule GATWeb.CourseLive.Show do
  use GATWeb, :live_view
  import Number.Currency

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_params(%{"id" => id}, _url, socket) do
    socket =
      socket
      |> assign(:page_title, "Course Details")
      |> assign(:course, get_course(id))

    {:noreply, socket}
  end

  defp get_course(id) do
    GAT.Training.Data.get_course(id)
  end

  defp cost(price) do
    number_to_currency(price, unit: "€", format: "%u %n", precision: 0)
  end
end
