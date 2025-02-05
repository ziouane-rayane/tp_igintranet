defmodule IgIntranet.AccountsTest do
  use IgIntranet.DataCase

  alias IgIntranet.Accounts

  describe "users" do
    alias IgIntranet.Accounts.User

    import IgIntranet.AccountsFixtures

    @invalid_attrs %{name: nil, age: nil}

    test "list_users/0 returns all users" do
      user = user_fixture()
      assert Accounts.list_users() == [user]
    end

    test "get_user!/1 returns the user with given id" do
      user = user_fixture()
      assert Accounts.get_user!(user.id) == user
    end

    test "create_user/1 with valid data creates a user" do
      valid_attrs = %{name: "some name", age: 42}

      assert {:ok, %User{} = user} = Accounts.create_user(valid_attrs)
      assert user.name == "some name"
      assert user.age == 42
    end

    test "create_user/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Accounts.create_user(@invalid_attrs)
    end

    test "update_user/2 with valid data updates the user" do
      user = user_fixture()
      update_attrs = %{name: "some updated name", age: 43}

      assert {:ok, %User{} = user} = Accounts.update_user(user, update_attrs)
      assert user.name == "some updated name"
      assert user.age == 43
    end

    test "update_user/2 with invalid data returns error changeset" do
      user = user_fixture()
      assert {:error, %Ecto.Changeset{}} = Accounts.update_user(user, @invalid_attrs)
      assert user == Accounts.get_user!(user.id)
    end

    test "delete_user/1 deletes the user" do
      user = user_fixture()
      assert {:ok, %User{}} = Accounts.delete_user(user)
      assert_raise Ecto.NoResultsError, fn -> Accounts.get_user!(user.id) end
    end

    test "change_user/1 returns a user changeset" do
      user = user_fixture()
      assert %Ecto.Changeset{} = Accounts.change_user(user)
    end
  end

  describe "posts" do
    alias IgIntranet.Accounts.Post

    import IgIntranet.AccountsFixtures

    @invalid_attrs %{description: nil, username: nil, email: nil}

    test "list_posts/0 returns all posts" do
      post = post_fixture()
      assert Accounts.list_posts() == [post]
    end

    test "get_post!/1 returns the post with given id" do
      post = post_fixture()
      assert Accounts.get_post!(post.id) == post
    end

    test "create_post/1 with valid data creates a post" do
      valid_attrs = %{description: "some description", username: "some username", email: "some email"}

      assert {:ok, %Post{} = post} = Accounts.create_post(valid_attrs)
      assert post.description == "some description"
      assert post.username == "some username"
      assert post.email == "some email"
    end

    test "create_post/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Accounts.create_post(@invalid_attrs)
    end

    test "update_post/2 with valid data updates the post" do
      post = post_fixture()
      update_attrs = %{description: "some updated description", username: "some updated username", email: "some updated email"}

      assert {:ok, %Post{} = post} = Accounts.update_post(post, update_attrs)
      assert post.description == "some updated description"
      assert post.username == "some updated username"
      assert post.email == "some updated email"
    end

    test "update_post/2 with invalid data returns error changeset" do
      post = post_fixture()
      assert {:error, %Ecto.Changeset{}} = Accounts.update_post(post, @invalid_attrs)
      assert post == Accounts.get_post!(post.id)
    end

    test "delete_post/1 deletes the post" do
      post = post_fixture()
      assert {:ok, %Post{}} = Accounts.delete_post(post)
      assert_raise Ecto.NoResultsError, fn -> Accounts.get_post!(post.id) end
    end

    test "change_post/1 returns a post changeset" do
      post = post_fixture()
      assert %Ecto.Changeset{} = Accounts.change_post(post)
    end
  end
end
