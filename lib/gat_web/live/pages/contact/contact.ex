defmodule GATWeb.Pages.Contact do
  use GATWeb, :live_component

  alias GAT.Contact
  alias GAT.Contact.Form

  import GATWeb.Components.UI, only: [asterisk: 1]

  def mount(socket) do
    meta_attrs = [
      %{name: "keywords", content: "Gulf Air Training contact us"},
      %{name: "keywords", content: "Only agent for Gulf Air Academy in Egypt"}
    ]

    socket =
      socket
      |> assign(meta_attrs: meta_attrs)
      |> assign_form()
      |> assign_changeset()

    {:ok, socket}
  end

  def assign_form(socket) do
    socket
    |> assign(form: %Form{})
  end

  def assign_changeset(%{assigns: %{form: form}} = socket) do
    socket
    |> assign(changeset: Contact.change_form(form))
  end

  def handle_event(
        "validate",
        %{"form" => form_params},
        %{assigns: %{form: form}} = socket
      ) do
    changeset =
      form
      |> Contact.change_form(form_params)
      |> Map.put(:action, :validate)

    {:noreply, assign(socket, changeset: changeset)}
  end

  def handle_event("save", %{"form" => form_params}, socket) do
    changeset = Contact.change_form(%Form{}, form_params)

    case changeset.valid? do
      true ->
        Contact.submit_form(form_params)

        {:noreply,
         socket
         |> put_flash(:success, "Your message sent successfully!")
         |> push_redirect(to: Routes.page_path(socket, :home))}

      false ->
        {:noreply,
         socket
         |> put_flash(:error, "There were errors with your submission")
         |> assign(changeset: %{changeset | action: :validate})}
    end
  end

  def subjects() do
    [
      gettext("ATPL Integrated"),
      gettext("ATPL Modular"),
      gettext("Other Courses")
    ]
  end
end
