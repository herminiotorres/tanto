defmodule Tanto.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add(:username, :citext)

      timestamps()
    end

    create(unique_index(:users, [:username]))
  end
end
