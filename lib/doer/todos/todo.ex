defmodule Doer.Todos.Todo do
  use Ecto.Schema
  import Ecto.Query
  alias Doer.Accounts.User

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "todos" do
    field :content, :string
    field :done_at, :utc_datetime
    
    belongs_to :user, User
    belongs_to :todo, Todo
    timestamps()
  end

  def changeset(class, attrs) do
    todo
    |> cast(attrs, [:content, :user_id, :done_at, :todo_id])
    |> validate_required([:content, :user_id, :done_at, :todo_id])
  end
end
