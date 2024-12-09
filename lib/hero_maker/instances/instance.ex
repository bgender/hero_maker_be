defmodule HeroMaker.Instances.Instance do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "instances" do
    field :name, :string
    field :description, :string
    field :slot_id, :binary_id
    field :variables_id, :binary_id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(instance, attrs) do
    instance
    |> cast(attrs, [:name, :description])
    |> validate_required([:name, :description])
  end
end
