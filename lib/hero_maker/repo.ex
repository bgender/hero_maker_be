defmodule HeroMaker.Repo do
  use Ecto.Repo,
    otp_app: :hero_maker,
    adapter: Ecto.Adapters.Postgres
end
