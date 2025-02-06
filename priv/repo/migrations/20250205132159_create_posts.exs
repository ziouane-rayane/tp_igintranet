defmodule IgIntranet.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :email, :string
      add :username, :string
      add :description, :string

      timestamps(type: :utc_datetime)
    end
  end
end
