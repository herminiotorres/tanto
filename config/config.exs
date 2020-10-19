import Config

# Ecto Repositories
config :tanto,
  ecto_repos: [Tanto.Repo]

# Configure your database
config :tanto, Tanto.Repo,
  database: "tanto_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  port: "5432",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10
