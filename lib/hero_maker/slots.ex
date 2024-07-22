defmodule HeroMaker.Slots do
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
  def changeset(slots, attrs) do
    slots
    |> cast(attrs, [:slot_name, :trait])
    |> validate_required([:slot_name, :trait])
  end

  alias HeroMaker.Slots.Slot

  @doc """
  Returns the list of slots.

  ## Examples

      iex> list_slots()
      [%Slot{}, ...]

  """
  def list_slots do
    Repo.all(Slot)
  end

  @doc """
  Gets a single slot.

  Raises `Ecto.NoResultsError` if the Slot does not exist.

  ## Examples

      iex> get_slot!(123)
      %Slot{}

      iex> get_slot!(456)
      ** (Ecto.NoResultsError)

  """
  def get_slot!(id), do: Repo.get!(Slot, id)

  @doc """
  Creates a slot.

  ## Examples

      iex> create_slot(%{field: value})
      {:ok, %Slot{}}

      iex> create_slot(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_slot(attrs \\ %{}) do
    %Slot{}
    |> Slot.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a slot.

  ## Examples

      iex> update_slot(slot, %{field: new_value})
      {:ok, %Slot{}}

      iex> update_slot(slot, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_slot(%Slot{} = slot, attrs) do
    slot
    |> Slot.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a slot.

  ## Examples

      iex> delete_slot(slot)
      {:ok, %Slot{}}

      iex> delete_slot(slot)
      {:error, %Ecto.Changeset{}}

  """
  def delete_slot(%Slot{} = slot) do
    Repo.delete(slot)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking slot changes.

  ## Examples

      iex> change_slot(slot)
      %Ecto.Changeset{data: %Slot{}}

  """
  def change_slot(%Slot{} = slot, attrs \\ %{}) do
    Slot.changeset(slot, attrs)
  end
end
