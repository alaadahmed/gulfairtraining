defmodule GATWeb.Components.Header do
  use GATWeb, :live_component
  use GATWeb.Pages
  import GATWeb.Components.UI
  alias GATWeb.Endpoint

  def nav_items do
    [
      {Routes.page_path(Endpoint, :home), gettext("Home")},
      {Routes.course_index_path(Endpoint, :index), gettext("Courses")},
      {Routes.page_path(Endpoint, :why_us), gettext("Why us")},
      {Routes.page_path(Endpoint, :facilities), gettext("Facilities")},
      {Routes.page_path(Endpoint, :fleet), gettext("Fleet")},
      {Routes.page_path(Endpoint, :faq), gettext("FAQs")},
      {Routes.page_path(Endpoint, :contact), gettext("Contact")}
    ]
  end
end
