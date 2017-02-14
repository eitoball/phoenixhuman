defmodule Phoenixhuman.IdeaTest do
  use Phoenixhuman.ModelCase

  alias Phoenixhuman.Idea

  @valid_attrs %{description: "some content", name: "some content", picture: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Idea.changeset(%Idea{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Idea.changeset(%Idea{}, @invalid_attrs)
    refute changeset.valid?
  end
end
