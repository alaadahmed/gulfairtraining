defmodule GAT.SettingsTest do
  use GAT.DataCase

  alias GAT.Settings

  describe "options" do
    alias GAT.Settings.Option

    import GAT.SettingsFixtures

    @invalid_attrs %{address: nil, email: nil, facebook: nil, instagram: nil, telephone: nil, whatsapp: nil}

    test "list_options/0 returns all options" do
      option = option_fixture()
      assert Settings.list_options() == [option]
    end

    test "get_option!/1 returns the option with given id" do
      option = option_fixture()
      assert Settings.get_option!(option.id) == option
    end

    test "create_option/1 with valid data creates a option" do
      valid_attrs = %{address: "some address", email: "some email", facebook: "some facebook", instagram: "some instagram", telephone: "some telephone", whatsapp: "some whatsapp"}

      assert {:ok, %Option{} = option} = Settings.create_option(valid_attrs)
      assert option.address == "some address"
      assert option.email == "some email"
      assert option.facebook == "some facebook"
      assert option.instagram == "some instagram"
      assert option.telephone == "some telephone"
      assert option.whatsapp == "some whatsapp"
    end

    test "create_option/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Settings.create_option(@invalid_attrs)
    end

    test "update_option/2 with valid data updates the option" do
      option = option_fixture()
      update_attrs = %{address: "some updated address", email: "some updated email", facebook: "some updated facebook", instagram: "some updated instagram", telephone: "some updated telephone", whatsapp: "some updated whatsapp"}

      assert {:ok, %Option{} = option} = Settings.update_option(option, update_attrs)
      assert option.address == "some updated address"
      assert option.email == "some updated email"
      assert option.facebook == "some updated facebook"
      assert option.instagram == "some updated instagram"
      assert option.telephone == "some updated telephone"
      assert option.whatsapp == "some updated whatsapp"
    end

    test "update_option/2 with invalid data returns error changeset" do
      option = option_fixture()
      assert {:error, %Ecto.Changeset{}} = Settings.update_option(option, @invalid_attrs)
      assert option == Settings.get_option!(option.id)
    end

    test "delete_option/1 deletes the option" do
      option = option_fixture()
      assert {:ok, %Option{}} = Settings.delete_option(option)
      assert_raise Ecto.NoResultsError, fn -> Settings.get_option!(option.id) end
    end

    test "change_option/1 returns a option changeset" do
      option = option_fixture()
      assert %Ecto.Changeset{} = Settings.change_option(option)
    end
  end
end
