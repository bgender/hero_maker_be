defmodule HeroMaker.SlotsTest do
  use HeroMaker.DataCase

  alias HeroMaker.Slots

  describe "slots" do
    alias HeroMaker.Slots.Slot

    import HeroMaker.SlotsFixtures

    @invalid_attrs %{slot_name: nil, trait: nil}

    test "list_slots/0 returns all slots" do
      slot = slot_fixture()
      assert Slots.list_slots() == [slot]
    end

    test "get_slot!/1 returns the slot with given id" do
      slot = slot_fixture()
      assert Slots.get_slot!(slot.id) == slot
    end

    test "create_slot/1 with valid data creates a slot" do
      valid_attrs = %{slot_name: "some slot_name", trait: "some trait"}

      assert {:ok, %Slot{} = slot} = Slots.create_slot(valid_attrs)
      assert slot.slot_name == "some slot_name"
      assert slot.trait == "some trait"
    end

    test "create_slot/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Slots.create_slot(@invalid_attrs)
    end

    test "update_slot/2 with valid data updates the slot" do
      slot = slot_fixture()
      update_attrs = %{slot_name: "some updated slot_name", trait: "some updated trait"}

      assert {:ok, %Slot{} = slot} = Slots.update_slot(slot, update_attrs)
      assert slot.slot_name == "some updated slot_name"
      assert slot.trait == "some updated trait"
    end

    test "update_slot/2 with invalid data returns error changeset" do
      slot = slot_fixture()
      assert {:error, %Ecto.Changeset{}} = Slots.update_slot(slot, @invalid_attrs)
      assert slot == Slots.get_slot!(slot.id)
    end

    test "delete_slot/1 deletes the slot" do
      slot = slot_fixture()
      assert {:ok, %Slot{}} = Slots.delete_slot(slot)
      assert_raise Ecto.NoResultsError, fn -> Slots.get_slot!(slot.id) end
    end

    test "change_slot/1 returns a slot changeset" do
      slot = slot_fixture()
      assert %Ecto.Changeset{} = Slots.change_slot(slot)
    end
  end
end
