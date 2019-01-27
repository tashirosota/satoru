# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :satoru,
  ecto_repos: [Satoru.Repo]

# Configures the endpoint
config :satoru, SatoruWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "BQF28wBDE7mlm49vBAuA9MhxIowuv48rdJg0xUTyxB66MYjkDKXsmWcA5cVZn5Ku",
  render_errors: [view: SatoruWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Satoru.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# User Slim Template
config :phoenix, :template_engines,
    slim: PhoenixSlime.Engine,
    slime: PhoenixSlime.Engine

config :phoenix_slime, :use_slim_extension, true

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
