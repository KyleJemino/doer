defmodule Doer.Todos.Resolvers.TodoResolver do
  alias Doer.Repo
  alias Doer.Todos.Todo
  import Ecto.Query

  def list_todo(_params \\ %{}) do
    Repo.all(Todo)  
  end

  def get_todo(%{"id" => id} = _params) do
    where(Todo, [t], t.id == ^id)
    |> Repo.one()
  end

  def create_todo(params \\ %{}) do
    %Todo{}
    |> Todo.changeset(params)
    |> Repo.insert()
  end
end
