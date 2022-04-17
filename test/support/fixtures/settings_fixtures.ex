defmodule GAT.SettingsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `GAT.Settings` context.
  """

  @doc """
  Generate a option.
  """
  def option_fixture(attrs \\ %{}) do
    {:ok, option} =
      attrs
      |> Enum.into(%{
        address: "some address",
        email: "some email",
        facebook: "some facebook",
        instagram: "some instagram",
        telephone: "some telephone",
        whatsapp: "some whatsapp"
      })
      |> GAT.Settings.create_option()

    option
  end
end
