defmodule Tanto.Repo.Migrations.CreateRecipeTranslations do
  use Ecto.Migration

  def change do
    create table(:recipe_translations) do
      add(:lang_code, :string)
      add(:original_recipe_id, references(:recipes, on_delete: :nothing))
      add(:translated_recipe_id, references(:recipes, on_delete: :delete_all))
      add(:status, :text)

      timestamps()
    end

    create(index(:recipe_translations, [:original_recipe_id]))
    create(index(:recipe_translations, [:translated_recipe_id]))
    create(index(:recipe_translations, [:original_recipe_id, :translated_recipe_id]))
  end
end
