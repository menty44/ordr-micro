# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ordr_api,
  ecto_repos: [OrdrApi.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :ordr_api, OrdrApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "AWTByer2lsHobVMJTFfByOLOuu+iUuMVQyamM6zQkq7oTjX5xu4MxCtY5aCGCDDJ",
  render_errors: [view: OrdrApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: OrdrApi.PubSub,
  live_view: [signing_salt: "VRlzZFa5"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
