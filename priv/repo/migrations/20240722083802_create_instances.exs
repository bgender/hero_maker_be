defmodule HeroMaker.Repo.Migrations.CreateInstances do
  use Ecto.Migration

  def change do
    create table(:instances, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string
      add :description, :string
      add :slot_id, references(:slots, on_delete: :nothing, type: :binary_id)
      add :set_id, references(:sets, on_delete: :nothing, type: :binary_id)

      timestamps(type: :utc_datetime)
    end

    create index(:instances, [:slot_id])
    create index(:instances, [:set_id])
  end
end
