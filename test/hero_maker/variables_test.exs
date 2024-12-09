defmodule HeroMaker.VariablesTest do
  use HeroMaker.DataCase

  alias HeroMaker.Variables

  describe "variables" do
    alias HeroMaker.Variables.Variable

    import HeroMaker.VariablesFixtures

    @invalid_attrs %{info: nil, name: nil}

    test "list_variables/0 returns all variables" do
      variable = variable_fixture()
      assert Variables.list_variables() == [variable]
    end

    test "get_variable!/1 returns the variable with given id" do
      variable = variable_fixture()
      assert Variables.get_variable!(variable.id) == variable
    end

    test "create_variable/1 with valid data creates a variable" do
      valid_attrs = %{info: %{}, name: "some name"}

      assert {:ok, %Variable{} = variable} = Variables.create_variable(valid_attrs)
      assert variable.info == %{}
      assert variable.name == "some name"
    end

    test "create_variable/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Variables.create_variable(@invalid_attrs)
    end

    test "update_variable/2 with valid data updates the variable" do
      variable = variable_fixture()
      update_attrs = %{info: %{}, name: "some updated name"}

      assert {:ok, %Variable{} = variable} = Variables.update_variable(variable, update_attrs)
      assert variable.info == %{}
      assert variable.name == "some updated name"
    end

    test "update_variable/2 with invalid data returns error changeset" do
      variable = variable_fixture()
      assert {:error, %Ecto.Changeset{}} = Variables.update_variable(variable, @invalid_attrs)
      assert variable == Variables.get_variable!(variable.id)
    end

    test "delete_variable/1 deletes the variable" do
      variable = variable_fixture()
      assert {:ok, %Variable{}} = Variables.delete_variable(variable)
      assert_raise Ecto.NoResultsError, fn -> Variables.get_variable!(variable.id) end
    end

    test "change_variable/1 returns a variable changeset" do
      variable = variable_fixture()
      assert %Ecto.Changeset{} = Variables.change_variable(variable)
    end
    test "create_variable/2 with right way" do
      create_variable("Sythian Gloves",%{"Attack Damage" =>  "50","Attack Speed" =>  "30%","Ability Power" =>  "210"}
      )

      set = "Sythian"
      info = %{"Mana Point" =>  "10","Attack Damage" =>  "50","Attack Speed" =>  "30%","Ability Power" =>  "210","Cool Down" =>  "30%"}

    end
  end
end


# %{"Mana Point" =>  "10","Attack Damage" =>  "50","Attack Speed" =>  "30%","Ability Power" =>  "210","Cool Down" =>  "30%"}

# %{"Health Point" => nil,"Mana Point" =>  nil,"Movement Speed" =>  nil,"Armor Reduction" =>  nil,"Magic Reduction" =>  nil,
# "Attack Damage" =>  nil,"Attack Speed" =>  nil,"Ability Power" =>  nil,"Cool Down" =>  nil,"Piercing" =>  nil, "Critical Chance" =>  nil ,
#  "Critical Damage" =>  nil, "Damage" =>  nil, "Buff" =>  nil,"Resisitance" =>  nil,"De-buff" =>  nil, "Blockchance" =>  nil, "Efficency" =>  nil}
