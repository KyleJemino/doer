defmodule Doer.Repo do
  use Ecto.Repo,
    otp_app: :doer,
    adapter: Ecto.Adapters.Postgres
end
