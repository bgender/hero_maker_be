defmodule HeroMaker.Set do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "sets" do
    field :set_name, :string
    field :set_bonus, :map , default: nil

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(set, attrs) do
    set
    |> cast(attrs, [:set_name])
    |> validate_required([:set_name])
  end
end
