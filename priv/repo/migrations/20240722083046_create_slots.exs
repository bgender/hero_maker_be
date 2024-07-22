defmodule HeroMaker.Repo.Migrations.CreateSlots do
  use Ecto.Migration

  def change do
    create table(:slots, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :slot_name, :string
      add :trait, :string

      timestamps(type: :utc_datetime)
    end
  end
end
