defmodule AppWeb.Resolvers.Todos do
  def list_todos(_parent, _resolution) do
    {:ok, App.Tasks.list_tasks}
  end
end
