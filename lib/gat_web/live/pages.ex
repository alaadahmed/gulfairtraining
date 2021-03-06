defmodule GATWeb.Pages do
  import Phoenix.LiveView
  import GATWeb.Gettext
  import Gettext, only: [with_locale: 2]

  alias GATWeb.Router.Helpers, as: Routes
  alias GATWeb.PageLive
  alias GATWeb.CourseLive

  defmacro __using__(_opts) do
    quote do
      alias GATWeb.Pages.Contact
      alias GATWeb.Pages.Facilities
      alias GATWeb.Pages.Home
      alias GATWeb.Pages.WhyUs
      alias GATWeb.Pages.Fleet
      alias GATWeb.Pages.Faqs
    end
  end

  def on_mount(:default, _params, _session, socket) do
    {:cont,
     socket
     |> attach_hook(:current_page, :handle_params, &set_current_page_and_locale_route/3)}
  end

  defp set_current_page_and_locale_route(params, _url, socket) do
    current_locale = socket.assigns.locale
    locale = (current_locale == "ar" && "en") || "ar"

    {current_page, route} =
      with_locale(current_locale, fn ->
        case {socket.view, socket.assigns.live_action} do
          {PageLive, :home} ->
            {gettext("Home"), Routes.page_path(socket, :home, locale: locale)}

          {PageLive, :contact} ->
            {gettext("Contact"), Routes.page_path(socket, :contact, locale: locale)}

          {PageLive, :facilities} ->
            {gettext("Facilities"), Routes.page_path(socket, :facilities, locale: locale)}

          {PageLive, :why_us} ->
            {gettext("Why us"), Routes.page_path(socket, :why_us, locale: locale)}

          {PageLive, :fleet} ->
            {gettext("Fleet"), Routes.page_path(socket, :fleet, locale: locale)}

          {PageLive, :faq} ->
            {gettext("FAQs"), Routes.page_path(socket, :faq, locale: locale)}

          {CourseLive.Index, action} ->
            {gettext("Courses"), Routes.course_index_path(socket, action, locale: locale)}

          {CourseLive.Show, :show} ->
            {gettext("Courses"),
             Routes.course_show_path(socket, :show, params["id"], locale: locale)}
        end
      end)

    {:cont,
     socket
     |> assign(locale_route: route)
     |> assign(page: current_page)}
  end

  # defp current_page(page) do
  #   page
  #   |> Atom.to_string()
  #   |> String.replace("_", " ")
  #   |> String.capitalize()
  # end
end
