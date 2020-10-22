import Config

# Ecto Repositories
config :tanto,
  ecto_repos: [Tanto.Repo]

import_config "#{Mix.env()}.exs"
