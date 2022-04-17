defmodule GATWeb.Router do
  use GATWeb, :router

  import GATWeb.UserAuth

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {GATWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug :fetch_current_user
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
      live "/faqs", PageLive, :faq
      live "/why_us", PageLive, :why_us

      live "/courses", CourseLive.Index, :index
      live "/courses/:id", CourseLive.Show, :show

      live "/courses/new", CourseLive.Index, :new
      live "/courses/:id/edit", CourseLive.Index, :edit
      live "/courses/:id/show/edit", CourseLive.Show, :edit
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

  ## Authentication routes

  scope "/", GATWeb do
    pipe_through [:browser, :redirect_if_user_is_authenticated]

    get "/users/register", UserRegistrationController, :new
    post "/users/register", UserRegistrationController, :create
    get "/users/log_in", UserSessionController, :new
    post "/users/log_in", UserSessionController, :create
    get "/users/reset_password", UserResetPasswordController, :new
    post "/users/reset_password", UserResetPasswordController, :create
    get "/users/reset_password/:token", UserResetPasswordController, :edit
    put "/users/reset_password/:token", UserResetPasswordController, :update
  end

  scope "/", GATWeb do
    pipe_through [:browser, :require_authenticated_user]

    get "/users/settings", UserSettingsController, :edit
    put "/users/settings", UserSettingsController, :update
    get "/users/settings/confirm_email/:token", UserSettingsController, :confirm_email
  end

  scope "/", GATWeb do
    pipe_through [:browser]

    delete "/users/log_out", UserSessionController, :delete
    get "/users/confirm", UserConfirmationController, :new
    post "/users/confirm", UserConfirmationController, :create
    get "/users/confirm/:token", UserConfirmationController, :edit
    post "/users/confirm/:token", UserConfirmationController, :update
    live "/*notfound", NotFoundLive
  end
end
