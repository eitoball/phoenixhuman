defmodule Phoenixhuman.PageController do
  use Phoenixhuman.Web, :controller

  def info(conn, _params) do
    render conn, "info.html"
  end
end
