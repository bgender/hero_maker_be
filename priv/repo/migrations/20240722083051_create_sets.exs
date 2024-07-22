defmodule HeroMaker.Repo.Migrations.CreateSets do
  use Ecto.Migration

  def change do
    create table(:sets, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :set_name, :string

      timestamps(type: :utc_datetime)
    end
  end
end
