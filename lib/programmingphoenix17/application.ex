defmodule Programmingphoenix17.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      Programmingphoenix17Web.Telemetry,
      # Start the Ecto repository
      Programmingphoenix17.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Programmingphoenix17.PubSub},
      # Start Finch
      {Finch, name: Programmingphoenix17.Finch},
      # Start the Endpoint (http/https)
      Programmingphoenix17Web.Endpoint
      # Start a worker by calling: Programmingphoenix17.Worker.start_link(arg)
      # {Programmingphoenix17.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Programmingphoenix17.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    Programmingphoenix17Web.Endpoint.config_change(changed, removed)
    :ok
  end
end
