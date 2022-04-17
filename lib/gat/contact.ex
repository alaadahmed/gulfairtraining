defmodule GAT.Contact do
  @moduledoc false
  alias GAT.Contact.Form

  def change_form(%Form{} = form, attrs \\ %{}) do
    Form.changeset(form, attrs)
  end

  def submit_form(form) do
    GAT.Accounts.UserNotifier.deliver_form_to_gat(form)
  end
end
