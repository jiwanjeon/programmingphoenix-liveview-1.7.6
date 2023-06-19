defmodule Programmingphoenix17.ProgrammingPhoenix17Fixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Programmingphoenix17.ProgrammingPhoenix17` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        name: "some name",
        password_hash: "some password_hash",
        username: "some username"
      })
      |> Programmingphoenix17.ProgrammingPhoenix17.create_user()

    user
  end
end
