defmodule IgIntranet.Accounts.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :description, :string
    field :username, :string
    field :email, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:email, :username, :description])
    |> validate_required([:email, :username, :description])
  end
end
