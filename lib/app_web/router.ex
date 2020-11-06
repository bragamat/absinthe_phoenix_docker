defmodule AppWeb.Router do
  use AppWeb, :router

  pipeline :browser do
    plug :accepts, ["html", "json"]
    plug :fetch_session
    plug :fetch_flash
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
    plug AppWeb.Context
  end

  scope "/api" do
    pipe_through :browser


    get  "/todos", AppWeb.TodoController, :index
    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: AppWeb.Schema

    forward "/", Absinthe.Plug,
      schema: AppWeb.Schema
  end

  # scope "/" do
    # forward "/graph", Absinthe.Plug, schema: AppWeb.Schema
    # forward "/graphiql", Absinthe.Plug.GraphiQL, schema: KerriganApi.Schema
  # end

  # Other scopes may use custom stacks.
  # scope "/api", AppWeb do
  #   pipe_through :api
  # end
end
