defmodule OrdrApi.Repo do
  use Ecto.Repo,
    otp_app: :ordr_api,
    adapter: Ecto.Adapters.Postgres
end
