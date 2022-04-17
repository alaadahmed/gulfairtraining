defmodule GAT.Repo do
  use Ecto.Repo,
    otp_app: :gat,
    adapter: Ecto.Adapters.Postgres
end
