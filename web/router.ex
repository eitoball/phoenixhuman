defmodule Phoenixhuman.Router do
  use Phoenixhuman.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Phoenixhuman do
    pipe_through :browser # Use the default browser stack

    resources "/ideas", IdeaController
    get "/", IdeaController, :index
    get "/pages/info", PageController, :info
  end

  # Other scopes may use custom stacks.
  # scope "/api", Phoenixhuman do
  #   pipe_through :api
  # end
end
