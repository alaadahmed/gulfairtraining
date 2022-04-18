defmodule GATWeb.Router do
  use GATWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {GATWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug GATWeb.Plugs.SetLocale
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  live_session :default, on_mount: GATWeb.Pages do
    scope "/", GATWeb do
      pipe_through :browser

      live "/", PageLive, :home
      live "/contact", PageLive, :contact
      live "/facilities", PageLive, :facilities
      live "/fleet", PageLive, :fleet
      live "/faqs", PageLive, :faqs
      live "/why_us", PageLive, :why_us
      live "/courses", CourseLive.Index, :index
      live "/courses/:id", CourseLive.Show, :show
      live "/*notfound", NotFoundLive
    end
  end

  # Other scopes may use custom stacks.
  # scope "/api", GATWeb do
  #   pipe_through :api
  # end

  # Enables the Swoosh mailbox preview in development.
  #
  # Note that preview only shows emails that were sent by the same
  # node running the Phoenix server.
  if Mix.env() == :dev do
    scope "/dev" do
      pipe_through :browser

      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end
