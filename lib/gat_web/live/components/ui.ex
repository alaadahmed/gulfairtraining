defmodule GATWeb.Components.UI do
  use GATWeb, :component

  def locale_btn(assigns) do
    ~H"""
    <%= link(to: @route, class: "inline-flex items-center justify-center") do %>
      <span class="text-xs font-bold uppercase bg-white px-1 py-0.5 rounded">
        <%= @locale %>
      </span>
    <% end %>
    """
  end

  def asterisk(assigns) do
    ~H"""
    <svg xmlns="http://www.w3.org/2000/svg" class="w-2.5 h-2.5 fill-current text-rose-600" viewBox="0 0 16 16">
      <path d="M8 0a1 1 0 0 1 1 1v5.268l4.562-2.634a1 1 0 1 1 1 1.732L10 8l4.562 2.634a1 1 0 1 1-1 1.732L9 9.732V15a1 1 0 1 1-2 0V9.732l-4.562 2.634a1 1 0 1 1-1-1.732L6 8 1.438 5.366a1 1 0 0 1 1-1.732L7 6.268V1a1 1 0 0 1 1-1z"/>
    </svg>
    """
  end
end
