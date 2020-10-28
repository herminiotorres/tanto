defmodule Tanto.Content.Comment do
  use Ecto.Schema

  schema "comments" do
    field(:body, :string)
    field(:author_id, :integer)
    field(:recipe_id, :integer)

    timestamps()
  end
end
