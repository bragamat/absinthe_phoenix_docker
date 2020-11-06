defmodule App.Tasks.Task do
  @moduledoc """
  The Task schema.
  """
  use Ecto.Schema
  import Ecto.Changeset

  schema "tasks" do
    field :description, :string
    field :duedate, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:title, :duedate, :description])
    |> validate_required([:title, :duedate, :description])
  end
end
