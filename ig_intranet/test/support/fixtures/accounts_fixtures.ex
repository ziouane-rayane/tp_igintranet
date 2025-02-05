defmodule IgIntranet.AccountsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `IgIntranet.Accounts` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        age: 42,
        name: "some name"
      })
      |> IgIntranet.Accounts.create_user()

    user
  end

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        description: "some description",
        email: "some email",
        username: "some username"
      })
      |> IgIntranet.Accounts.create_post()

    post
  end

  @doc """
  Generate a message.
  """
  def message_fixture(attrs \\ %{}) do
    {:ok, message} =
      attrs
      |> Enum.into(%{
        author: "some author",
        description: "some description"
      })
      |> IgIntranet.Accounts.create_message()

    message
  end
end
