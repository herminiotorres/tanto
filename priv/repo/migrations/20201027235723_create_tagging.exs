defmodule Tanto.Repo.Migrations.CreateTagging do
  use Ecto.Migration

  def change do
    create table(:tagging) do
      add(:tag_id, references(:tags, on_delete: :delete_all))
      add(:recipe_id, references(:recipes, on_delete: :delete_all))

      timestamps()
    end

    create(index(:tagging, [:tag_id]))
    create(index(:tagging, [:recipe_id]))
    create(index(:tagging, [:recipe_id, :tag_id]))
  end
end
