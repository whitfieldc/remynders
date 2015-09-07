defmodule Remynders.ReminderController do
  alias Remynders.Reminder
  use Remynders.Web, :controller

  plug :action

  def new(conn, _params) do
    changeset = Remynders.Reminder.changeset(%Remynders.Reminder{})
    render conn, "new.html", changeset: changeset
  end

  def create(conn, %{"reminder" => reminder_params}) do
    changeset = Reminder.changeset(%Reminder{}, reminder_params)
    case Repo.insert(changeset) do
      {:ok, _reminder} ->
        conn
        |> put_flash(:info, "Reminder created successfully")
        |> redirect(to: "/")
      {:error, changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

end
