defmodule GAT.Contact do
  @moduledoc false

  import Swoosh.Email
  alias GAT.Mailer
  alias GAT.Contact.Form

  def change_form(%Form{} = form, attrs \\ %{}) do
    Form.changeset(form, attrs)
  end

  def submit_form(form) do
    deliver_form_to_gat(form)
  end

  defp deliver_form_to_gat(form) do
    new()
    |> to("alaadahmed@gmail.com")
    |> from({"#{form["fullname"]}", "#{form["email"]}"})
    |> subject("#{form["subject"]}")
    |> html_body("""
    <div style="font-size:16px;line-height:1.5em;font-family:Helvetica Neue,Helvetica,Arial,sans-serif;color:#343434;max-width:600px;margin:0;">
    <div style="font-family:Helvetica,Arial,sans-serif;font-size:16px;line-height:1.5em;color:#343434;padding-bottom:10px">
      <p style="font-family:Helvetica,Arial,sans-serif;font-size:16px;line-height:1.5em;color:#343434;margin-bottom:1em">
        Hello GulfAirTraining,</p>
      <p style="font-family:Helvetica,Arial,sans-serif;font-size:16px;line-height:1.5em;color:#343434;margin-bottom:1em">Message from
        \"#{form["fullname"]}\"</p>
      <p style="font-family:Helvetica,Arial,sans-serif;font-size:16px;line-height:1.5em;color:#343434;margin-bottom:1em">#{form["message"]}
      </p>
      <p style="font-family:Helvetica,Arial,sans-serif;font-size:16px;line-height:1.5em;color:#343434;margin-bottom:1em">phone:
        #{form["phone"]}
    </div>
    </div>
    """)
    |> Mailer.deliver()
  end

  # defp deliver(recipient, subject, body) do
  #   email =
  #     new()
  #     |> to(recipient)
  #     |> from({"MyApp", "contact@example.com"})
  #     |> subject(subject)
  #     |> text_body(body)

  #   with {:ok, _metadata} <- Mailer.deliver(email) do
  #     {:ok, email}
  #   end
  # end
end
