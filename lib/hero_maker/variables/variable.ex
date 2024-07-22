defmodule HeroMaker.Variables.Variable do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "variables" do
    field :info, :map
    field :name, :string
    field :set_id, :binary_id
    field :slot_id, :binary_id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(variable, attrs) do
    variable
    |> cast(attrs, [:name, :info])
    |> validate_required([:name])
  end
end
