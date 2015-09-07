defmodule Remynders.ReminderTest do
  use Remynders.ModelCase

  alias Remynders.Reminder

  @valid_attrs %{email: "some content", minutes: 42, title: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Reminder.changeset(%Reminder{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Reminder.changeset(%Reminder{}, @invalid_attrs)
    refute changeset.valid?
  end
end
