defmodule Doer.Todos.Resolvers.TodoResolver do
  alias Doer.Todos.Todo
  import Ecto.Query

  def list_todo(_params \\ %{}) do
    Repo.all(Todos)  
  end

  def get_todo(%{"id" => id} = params) do
    Todo 
    |> where([t], t.id == ^id)
    |> Repo.one()
  end

  def create_todo(params \\ %{}) do
    %Todo{}
    |> Todo.changeset(params)
    |> Repo.insert()
  end
end
