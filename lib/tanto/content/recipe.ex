defmodule Tanto.Content.Recipe do
  use Ecto.Schema

  schema "recipes" do
    field(:title, :string)
    field(:body, :string)
    field(:lang_code, :string)
    field(:slug, :string)
    field(:servings, :integer)
    field(:status, :string)
    field(:ingredients, :string)
    field(:user_id, :integer)
    field(:category_id, :integer)

    timestamps()
  end
end
