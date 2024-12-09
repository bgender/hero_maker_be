defmodule HeroMaker.Slots do
  @moduledoc """
  The Slots context.
  """

  import Ecto.Query, warn: false
  alias HeroMaker.Repo

  alias HeroMaker.Slots.Slot

  def list_slots do
    Repo.all(Slot)
  end

  def slot_head do
    attrs = %{"slot_name" => "Head" ,"trait" => "Head"}
    create_slot(attrs)
  end
  def slot_chest do
    attrs = %{"slot_name" => "Chest" ,"trait" => "Chest"}
    create_slot(attrs)
  end
  def slot_glove do
    attrs = %{ "slot_name" => "Glove","trait" => "Glove"}
    create_slot(attrs)
  end
  def slot_pant do
    attrs = %{"slot_name" => "Pant" ,"trait" => "Pant"}
    create_slot(attrs)
  end
  def slot_boots do
    attrs = %{"slot_name" => "Boot" ,"trait" => "Boot"}
    create_slot(attrs)
  end
  def slot_accessory do
    attrs = %{"slot_name" => "Accessory" ,"trait" => "Accessory"}
    create_slot(attrs)
  end
  def slot_weapon_one do
    attrs = %{"slot_name" => "Weapon one" ,"trait" => "Weapon one"}
    create_slot(attrs)
  end
  def slot_weapon_two do
    attrs = %{"slot_name" => "Weapon Two" ,"trait" => "Weapon Two"}
    create_slot(attrs)
  end




  def do_slot do
    slot_head()
    slot_chest()
    slot_glove()
    slot_pant()
    slot_accessory()
    slot_weapon_one()
    slot_weapon_two()
  end
  def get_slot!(id), do: Repo.get!(Slot, id)
  def get_slot_id_by_name(name), do: Repo.get!(Slot,name)

  def create_slot(attrs \\ %{}) do
    %Slot{}
    |> Slot.changeset(attrs)
    |> Repo.insert()
  end


  def update_slot(%Slot{} = slot, attrs) do
    slot
    |> Slot.changeset(attrs)
    |> Repo.update()
  end

  def delete_slot(%Slot{} = slot) do
    Repo.delete(slot)
  end

  def change_slot(%Slot{} = slot, attrs \\ %{}) do
    Slot.changeset(slot, attrs)
  end
end
