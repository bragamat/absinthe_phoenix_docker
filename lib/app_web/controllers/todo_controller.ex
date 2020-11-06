defmodule AppWeb.TodoController do
  use AppWeb, :controller

  def index(conn, _params) do
    render(conn, "todos.json", params: "hello world")
  end
end
