defmodule AppWeb.Schema.TodoTypes do
  use Absinthe.Schema.Notation

  @desc "A Todo to be done with duedate"
  object :todo do
    field :id, :id
    field :title, :string
    field :description, :string
    field :duedate, :string
  end
end
