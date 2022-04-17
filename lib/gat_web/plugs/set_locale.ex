defmodule GATWeb.Plugs.SetLocale do
  import Plug.Conn
  @supported_locales Gettext.known_locales(GATWeb.Gettext)

  def init(default), do: default

  def call(conn, _opts) do
    case fetch_locale_from(conn) do
      nil ->
        conn

      locale ->
        GATWeb.Gettext
        |> Gettext.put_locale(locale)

        conn
        |> put_resp_cookie("locale", locale, max_age: 365 * 24 * 60 * 60)
        |> put_session(:locale, locale)
    end
  end

  defp fetch_locale_from(conn) do
    (conn.params["locale"] || conn.cookies["locale"])
    |> check_locale
  end

  defp check_locale(locale) when locale in @supported_locales, do: locale

  defp check_locale(_), do: nil
end
