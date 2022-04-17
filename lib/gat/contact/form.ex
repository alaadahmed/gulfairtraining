defmodule GAT.Contact.Form do
  @moduledoc false
  defstruct [:first_name, :last_name, :email, :mobile, :subject, :message]

  @types %{
    fullname: :string,
    email: :string,
    mobile: :string,
    subject: :string,
    message: :string
  }

  import Ecto.Changeset
  alias __MODULE__

  @mobile_format ~r/^\d{3}[\s-.]?\d{3}[\s-.]?\d{3}[\s-.]?\d{2}$/
  @email_format ~r/(\w+)@([\w.]+)\.([a-z]{2,4}|\d+)$/

  def changeset(%Form{} = form, attrs) do
    {form, @types}
    |> cast(attrs, Map.keys(@types))
    |> validate_required([:fullname, :email, :mobile, :subject, :message])
    |> validate_format(:email, @email_format)
    |> validate_format(:mobile, @mobile_format)
    |> validate_length(:fullname, min: 3, max: 50)
    |> validate_length(:message, max: 500)
  end
end
