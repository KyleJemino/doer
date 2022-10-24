defmodule Doer.Todos do
  alias Doer.Todos.Resolvers.TodoResolver

  defdelegate list_todo(params), to: TodoResolver
  defdelegate get_todo(params), to: TodoResolver
  defdelegate create_todo(params), to: TodoResolver
end
