defmodule GATWeb.NotFoundLive do
  use Phoenix.LiveView, layout: {GATWeb.LayoutView, "notfound.html"}
  alias GATWeb.Router.Helpers, as: Routes

  def render(assigns) do
    ~H"""
    <div class="flex flex-col min-h-screen pt-16 pb-12 bg-white">
      <main
        class="flex flex-col justify-center flex-grow w-full px-4 mx-auto max-w-7xl sm:px-6 lg:px-8"
      >
        <div class="flex justify-center shrink-0">
          <%= live_redirect to: Routes.page_path(@socket, :home), class: "inline-flex" do %>
            <span class="sr-only">Ahram German School</span>
            <img
              class="h-20"
              src={Routes.static_path(@socket, "/images/logo.png")}
              alt="Gulf Air Training"
            />
          <% end %>
        </div>
        <div class="py-10">
          <div class="text-center">
            <p class="text-sm font-semibold tracking-wide text-indigo-600 uppercase">404 error</p>
            <h1 class="mt-2 text-4xl font-extrabold tracking-tight text-slate-900 sm:text-5xl">
              Page not found.
            </h1>
            <p class="mt-2 text-base text-slate-500">
              Sorry, we couldn’t find the page you’re looking for.
            </p>
            <div class="mt-6">
              <%= live_redirect to: Routes.page_path(@socket, :home), class: "text-base font-medium text-indigo-600 hover:text-indigo-500" do %>
                Go back home<span aria-hidden="true">&rarr;</span>
              <% end %>
            </div>
          </div>
        </div>
      </main>
      <footer class="w-full px-4 mx-auto shrink-0 max-w-7xl sm:px-6 lg:px-8">
        <nav class="flex justify-center space-x-4">
          <%= live_redirect("Home",
            to: Routes.page_path(@socket, :home),
            class: "text-sm font-medium text-slate-500 hover:text-slate-600"
          ) %>
          <span class="inline-block border-l border-slate-300" aria-hidden="true"></span>
          <%= live_redirect("Contact",
            to: Routes.page_path(@socket, :contact),
            class: "text-sm font-medium text-slate-500 hover:text-slate-600"
          ) %>
        </nav>
      </footer>
    </div>
    """
  end
end
