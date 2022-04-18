defmodule GATWeb.UserLiveAuth do
  import Phoenix.LiveView

  def on_mount(:default, _params, session, socket) do
    {:cont, assign_defaults(socket, session)}
  end

  defp assign_defaults(socket, session) do
    socket
    |> assign_locale(session)
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
