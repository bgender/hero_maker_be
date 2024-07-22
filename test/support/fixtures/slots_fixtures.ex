defmodule HeroMaker.SlotsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `HeroMaker.Slots` context.
  """

  @doc """
  Generate a slot.
  """
  def slot_fixture(attrs \\ %{}) do
    {:ok, slot} =
      attrs
      |> Enum.into(%{
        slot_name: "some slot_name",
        trait: "some trait"
      })
      |> HeroMaker.Slots.create_slot()

    slot
  end
end
