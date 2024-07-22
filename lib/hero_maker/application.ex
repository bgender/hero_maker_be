defmodule HeroMaker.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      HeroMakerWeb.Telemetry,
      HeroMaker.Repo,
      {DNSCluster, query: Application.get_env(:hero_maker, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: HeroMaker.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: HeroMaker.Finch},
      # Start a worker by calling: HeroMaker.Worker.start_link(arg)
      # {HeroMaker.Worker, arg},
      # Start to serve requests, typically the last entry
      HeroMakerWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: HeroMaker.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    HeroMakerWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
