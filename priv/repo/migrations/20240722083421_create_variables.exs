defmodule HeroMaker.Repo.Migrations.CreateVariables do
  use Ecto.Migration

  def change do
    create table(:variables, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string
      add :info, :map
      add :set_id, references(:sets, on_delete: :nothing, type: :binary_id)
      add :slot_id, references(:slots, on_delete: :nothing, type: :binary_id)

      timestamps(type: :utc_datetime)
    end

    create index(:variables, [:set_id])
    create index(:variables, [:slot_id])
  end
end
