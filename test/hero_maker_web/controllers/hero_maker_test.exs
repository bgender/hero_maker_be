defmodule HeroMakerWeb.HeroMakerTest do
  use HeroMakerWeb.ConnCase, async: true

  base_stats = %{"Health Point" => 200 ,"Mana Point" => 10 ,"Movement Speed" => 35 ,"Armor Reduction" => 0 ,"Magic Reduction" => 0 ,
                 "Attack Damage" => 12 ,"Attack Speed" =>  1,"Ability Power"=> 10 ,"Cool Down"=> 0 ,"Piercing "=> 0}
  player = %{"level" => "1",}
  describe "player creation" do
    test "creates a player with basic stats" do
      attrs = %{name: "Hero", level: 1,}
      changeset = Player.changeset(%Player{}, attrs)

      assert changeset.valid?
    end
  end
  describe "inventory" do
    test "if inventory is full" do
      player = %{}

    end
    test "if invontory is empty" do

    end
  end

  describe "add on stats" do
    test "if unused stats" do

    end
    test "if no stats are used" do

    end
    test "if stats are used" do

    end
  end
  describe "weapon creation" do
    test "creating a weapon" do

    end
    test "equiping a weapon" do

    end
    test "unequipping a weapon" do

    end
  end
  describe "armor creation" do
    test "creating a armor" do

    end
    test "equiping a armor" do

    end
    test "unequipping a armor" do

    end
  end

  describe "equiped item" do
    test "creating a item" do

    end
    test "equiping a item" do

    end
    test "unequipping a item" do

    end
  end


end




# %{"Health Point" => 200 ,
# "Mana Point" => 10 ,
# "Movement Speed" => 35 ,
# "Armor Reduction" => 0 ,
# "Magic Reduction" => 0 ,
# "Attack Damage" => 12 ,
# "Attack Speed" => 0 ,
# "Ability Power"=> 10 ,
# "Cool Down"=> 0 ,
# "Piercing "=> 0}
