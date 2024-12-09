defmodule HeroMaker.Variables do
  @moduledoc """
  The Variables context.
  """

  import Ecto.Query, warn: false
  alias HeroMaker.Repo

  alias HeroMaker.Variables.Variable


  def list_variables do
    Repo.all(Variable)
  end

  def get_variable!(id), do: Repo.get!(Variable, id)


  def create_variable(attrs \\ %{}) do
    %Variable{}
    |> Variable.changeset(attrs)
    |> Repo.insert()
  end


  def update_variable(%Variable{} = variable, attrs) do
    variable
    |> Variable.changeset(attrs)
    |> Repo.update()
  end


  def delete_variable(%Variable{} = variable) do
    Repo.delete(variable)
  end


  def change_variable(%Variable{} = variable, attrs \\ %{}) do
    Variable.changeset(variable, attrs)
  end


  def create_variable_set(name,set,slot,info) do
    # set_id = get_set_id_by_name(set)
    # slot_id = get_slot_id_by_name(slot)
    attrs = %{"name" => name,"set_name" => set ,"slot_name" => slot, "info"=> info,"slot_id" => "slot_id","set_id" => "set_id"}
    create_variable(attrs)
  end
end
  # def extract_first_word(input) do
  #   [first_word | _] = String.split(input, " ")
  #   first_word
  # end

  # def extract_second_word(input) do
  #   [_ | second_word | _] = String.split(input, " ")
  #   second_word
  # end
