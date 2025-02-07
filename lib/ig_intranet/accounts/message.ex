defmodule IgIntranet.Accounts.Message do
  @moduledoc """
  Account Message
  """
  use Ecto.Schema
  import Ecto.Changeset

  schema "messages" do
    field :description, :string
    field :author, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(message, attrs) do
    message
    |> cast(attrs, [:description, :author])
    |> validate_required([:description, :author])
  end
end
