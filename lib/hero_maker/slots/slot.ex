defmodule HeroMaker.Slots.Slot do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "slots" do
    field :slot_name, :string
    field :trait, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(slot, attrs) do
    slot
    |> cast(attrs, [:slot_name, :trait])
    |> validate_required([:slot_name, :trait])
  end
end
