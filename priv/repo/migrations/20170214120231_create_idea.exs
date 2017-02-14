defmodule Phoenixhuman.Repo.Migrations.CreateIdea do
  use Ecto.Migration

  def change do
    create table(:ideas) do
      add :name, :string
      add :description, :text
      add :picture, :string

      timestamps()
    end

  end
end
