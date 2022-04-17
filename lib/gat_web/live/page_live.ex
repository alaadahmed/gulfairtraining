defmodule GATWeb.PageLive do
  use GATWeb, :live_view
  use GATWeb.Pages

  def handle_params(_params, _url, socket) do
    %{page: current_page} = socket.assigns

    socket =
      socket
      |> assign(:page_title, current_page)

    {:noreply, socket}
  end
end
