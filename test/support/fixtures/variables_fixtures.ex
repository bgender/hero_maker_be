defmodule HeroMaker.VariablesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `HeroMaker.Variables` context.
  """

  @doc """
  Generate a variable.
  """
  def variable_fixture(attrs \\ %{}) do
    {:ok, variable} =
      attrs
      |> Enum.into(%{
        info: %{},
        name: "some name"
      })
      |> HeroMaker.Variables.create_variable()

    variable
  end
end
