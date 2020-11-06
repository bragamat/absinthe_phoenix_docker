defmodule AppWeb.Schema do
  use Absinthe.Schema

  import_types AppWeb.Schema.TodoTypes

  query do
    @desc "Get all todos"
    field :todos, list_of(:todo) do
      resolve &AppWeb.Resolvers.Todos.list_todos/2
    end
  end
end
