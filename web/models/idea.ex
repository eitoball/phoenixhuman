defmodule Phoenixhuman.Idea do
  use Phoenixhuman.Web, :model
  use Arc.Ecto.Schema

  schema "ideas" do
    field :name, :string
    field :description, :string
    field :picture, Phoenixhuman.Picture.Type

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :description, :picture])
    |> cast_attachments(params, [:picture], [])
    |> validate_required([:name, :description, :picture])
  end
end
