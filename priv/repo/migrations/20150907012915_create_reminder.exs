defmodule Remynders.Repo.Migrations.CreateReminder do
  use Ecto.Migration

  def change do
    create table(:reminders) do
      add :minutes, :integer
      add :email, :string
      add :title, :string

      timestamps
    end

  end
end
