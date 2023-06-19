defmodule Programmingphoenix17Web.UserLive.Show do
  use Programmingphoenix17Web, :live_view

  alias Programmingphoenix17.ProgrammingPhoenix17

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_params(%{"id" => id}, _, socket) do
    {:noreply,
     socket
     |> assign(:page_title, page_title(socket.assigns.live_action))
     |> assign(:user, ProgrammingPhoenix17.get_user!(id))}
  end

  defp page_title(:show), do: "Show User"
  defp page_title(:edit), do: "Edit User"
end
