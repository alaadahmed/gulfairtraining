defmodule GAT.Accounts.UserNotifier do
  import Swoosh.Email

  alias GAT.Mailer

  # Delivers the email using the application mailer.
  defp deliver(recipient, subject, body) do
    email =
      new()
      |> to(recipient)
      |> from({"MyApp", "contact@example.com"})
      |> subject(subject)
      |> text_body(body)

    with {:ok, _metadata} <- Mailer.deliver(email) do
      {:ok, email}
    end
  end

  @doc """
  Deliver instructions to confirm account.
  """
  def deliver_confirmation_instructions(user, url) do
    deliver(user.email, "Confirmation instructions", """

    ==============================

    Hi #{user.email},

    You can confirm your account by visiting the URL below:

    #{url}

    If you didn't create an account with us, please ignore this.

    ==============================
    """)
  end

  def deliver_form_to_gat(form) do
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

  @doc """
  Deliver instructions to reset a user password.
  """
  def deliver_reset_password_instructions(user, url) do
    deliver(user.email, "Reset password instructions", """

    ==============================

    Hi #{user.email},

    You can reset your password by visiting the URL below:

    #{url}

    If you didn't request this change, please ignore this.

    ==============================
    """)
  end

  @doc """
  Deliver instructions to update a user email.
  """
  def deliver_update_email_instructions(user, url) do
    deliver(user.email, "Update email instructions", """

    ==============================

    Hi #{user.email},

    You can change your email by visiting the URL below:

    #{url}

    If you didn't request this change, please ignore this.

    ==============================
    """)
  end
end
