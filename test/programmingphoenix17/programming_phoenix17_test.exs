defmodule Programmingphoenix17.ProgrammingPhoenix17Test do
  use Programmingphoenix17.DataCase

  alias Programmingphoenix17.ProgrammingPhoenix17

  describe "users" do
    alias Programmingphoenix17.ProgrammingPhoenix17.User

    import Programmingphoenix17.ProgrammingPhoenix17Fixtures

    @invalid_attrs %{name: nil, password_hash: nil, username: nil}

    test "list_users/0 returns all users" do
      user = user_fixture()
      assert ProgrammingPhoenix17.list_users() == [user]
    end

    test "get_user!/1 returns the user with given id" do
      user = user_fixture()
      assert ProgrammingPhoenix17.get_user!(user.id) == user
    end

    test "create_user/1 with valid data creates a user" do
      valid_attrs = %{name: "some name", password_hash: "some password_hash", username: "some username"}

      assert {:ok, %User{} = user} = ProgrammingPhoenix17.create_user(valid_attrs)
      assert user.name == "some name"
      assert user.password_hash == "some password_hash"
      assert user.username == "some username"
    end

    test "create_user/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = ProgrammingPhoenix17.create_user(@invalid_attrs)
    end

    test "update_user/2 with valid data updates the user" do
      user = user_fixture()
      update_attrs = %{name: "some updated name", password_hash: "some updated password_hash", username: "some updated username"}

      assert {:ok, %User{} = user} = ProgrammingPhoenix17.update_user(user, update_attrs)
      assert user.name == "some updated name"
      assert user.password_hash == "some updated password_hash"
      assert user.username == "some updated username"
    end

    test "update_user/2 with invalid data returns error changeset" do
      user = user_fixture()
      assert {:error, %Ecto.Changeset{}} = ProgrammingPhoenix17.update_user(user, @invalid_attrs)
      assert user == ProgrammingPhoenix17.get_user!(user.id)
    end

    test "delete_user/1 deletes the user" do
      user = user_fixture()
      assert {:ok, %User{}} = ProgrammingPhoenix17.delete_user(user)
      assert_raise Ecto.NoResultsError, fn -> ProgrammingPhoenix17.get_user!(user.id) end
    end

    test "change_user/1 returns a user changeset" do
      user = user_fixture()
      assert %Ecto.Changeset{} = ProgrammingPhoenix17.change_user(user)
    end
  end
end
