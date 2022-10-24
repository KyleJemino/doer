defmodule Doer.Repo.Migrations.AddTodoTable do
  use Ecto.Migration

  def change do
    create table(:todos, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :content, :string, null: false
      add :done_at, :utc_datetime
      add :user_id, references(:users, on_delete: :nothing, type: :binary_id), null: false
      add :todo_id, references(:todos, on_delete: :nothing, type: :binary_id)

      timestamps()
    end

    create index(:todos, [:user_id])
    create index(:todos, [:todo_id])
  end
end
