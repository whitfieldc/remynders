defmodule Remynders.IndexView do
  use Remynders.Web, :view

  alias Remynders.Router.Helpers

  def new_reminder_path do
    Helpers.reminder_path(Remynders.Endpoint, :new)
  end

end
