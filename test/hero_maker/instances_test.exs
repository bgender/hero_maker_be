defmodule HeroMaker.InstancesTest do
  use HeroMaker.DataCase

  alias HeroMaker.Instances

  describe "instances" do
    alias HeroMaker.Instances.Instance

    import HeroMaker.InstancesFixtures

    @invalid_attrs %{name: nil, description: nil}

    test "list_instances/0 returns all instances" do
      instance = instance_fixture()
      assert Instances.list_instances() == [instance]
    end

    test "get_instance!/1 returns the instance with given id" do
      instance = instance_fixture()
      assert Instances.get_instance!(instance.id) == instance
    end

    test "create_instance/1 with valid data creates a instance" do
      valid_attrs = %{name: "some name", description: "some description"}

      assert {:ok, %Instance{} = instance} = Instances.create_instance(valid_attrs)
      assert instance.name == "some name"
      assert instance.description == "some description"
    end

    test "create_instance/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Instances.create_instance(@invalid_attrs)
    end

    test "update_instance/2 with valid data updates the instance" do
      instance = instance_fixture()
      update_attrs = %{name: "some updated name", description: "some updated description"}

      assert {:ok, %Instance{} = instance} = Instances.update_instance(instance, update_attrs)
      assert instance.name == "some updated name"
      assert instance.description == "some updated description"
    end

    test "update_instance/2 with invalid data returns error changeset" do
      instance = instance_fixture()
      assert {:error, %Ecto.Changeset{}} = Instances.update_instance(instance, @invalid_attrs)
      assert instance == Instances.get_instance!(instance.id)
    end

    test "delete_instance/1 deletes the instance" do
      instance = instance_fixture()
      assert {:ok, %Instance{}} = Instances.delete_instance(instance)
      assert_raise Ecto.NoResultsError, fn -> Instances.get_instance!(instance.id) end
    end

    test "change_instance/1 returns a instance changeset" do
      instance = instance_fixture()
      assert %Ecto.Changeset{} = Instances.change_instance(instance)
    end
  end
end
