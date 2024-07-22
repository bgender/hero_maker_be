defmodule HeroMaker.InstancesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `HeroMaker.Instances` context.
  """

  @doc """
  Generate a instance.
  """
  def instance_fixture(attrs \\ %{}) do
    {:ok, instance} =
      attrs
      |> Enum.into(%{
        description: "some description",
        name: "some name"
      })
      |> HeroMaker.Instances.create_instance()

    instance
  end
end
