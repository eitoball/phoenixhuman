defmodule Phoenixhuman.Idea do
  use Phoenixhuman.Web, :model

  schema "ideas" do
    field :name, :string
    field :description, :string
    field :picture, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :description, :picture])
    |> validate_required([:name, :description, :picture])
  end
end
