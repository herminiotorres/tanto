defmodule Tanto.Content.CoverImage do
  use Ecto.Schema

  schema "cover_images" do
    field(:file_name, :string)
    field(:recipe_id, :integer)

    timestamps()
  end
end
