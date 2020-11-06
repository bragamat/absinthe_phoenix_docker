defmodule AppWeb.TodoView do
  use AppWeb, :view

  def render("todos.json", _params) do
    todos = [
      %{id: 1, title: "Fazer cafe", duedate: "amanha"},
      %{id: 2, title: "Estudar elixir", duedate: "ontem"},
    ]
    %{todos: render_many(todos, __MODULE__, "todo.json")}
  end

  def render("todo.json", %{todo: todo}) do
    %{
      title: todo.title,
      duedate: todo.duedate
    }
  end
end
