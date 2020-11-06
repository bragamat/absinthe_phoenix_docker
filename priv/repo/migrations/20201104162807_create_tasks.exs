defmodule App.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :title, :string
      add :duedate, :string
      add :description, :string

      timestamps()
    end

  end
end
