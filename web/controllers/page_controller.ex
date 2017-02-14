defmodule Phoenixhuman.PageController do
  use Phoenixhuman.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
