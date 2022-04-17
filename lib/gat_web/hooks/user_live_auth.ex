defmodule GATWeb.UserLiveAuth do
  import Phoenix.LiveView
  alias GAT.Accounts

  def on_mount(:default, _params, session, socket) do
    {:cont, assign_defaults(socket, session)}
  end

  defp assign_defaults(socket, session) do
    socket
    |> assign_current_user(session)
    |> assign_locale(session)
  end

  defp assign_current_user(socket, session) do
    token = session["user_token"]

    if is_nil(token) do
      assign(socket, current_user: nil)
    else
      assign_new(
        socket,
        :current_user,
        fn ->
          Accounts.get_user_by_session_token(token)
        end
      )
    end
  end

  defp assign_locale(socket, session) do
    locale = session["locale"]

    if is_nil(locale) do
      assign(socket, locale: "en")
    else
      assign(socket, locale: locale)
    end
  end
end
