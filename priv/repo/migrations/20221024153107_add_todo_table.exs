defmodule Doer.Repo.Migrations.AddTodoTable do
  use Ecto.Migration

  def change do
    create table(:todos) do
      add :content, :string, null: false
      add :done_at, :utc_datetime
      add :user_id, references(:users, on_delete: :nothing), null: false
      add :todo_id, references(:todos, on_delete: :nothing)

      timestamps()
    end

    create index(:todos, [:user_id])
    create index(:todos, [:todo_id])
  end
end
