defmodule Tanto.Content.RecipeTranslation do
  use Ecto.Schema

  schema "recipe_translations" do
    field(:lang_code, :string)
    field(:original_recipe_id, :integer)
    field(:translated_recipe_id, :integer)
    field(:status, :string)

    timestamps()
  end
end
