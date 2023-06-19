defmodule Programmingphoenix17.ProgrammingPhoenix17.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :name, :string
    field :password_hash, :string
    field :username, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :username, :password_hash])
    |> validate_required([:name, :username, :password_hash])
  end
end
