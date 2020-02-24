defmodule Ricorex.Application do
  use Application
  require Logger

  def start(_type, _args) do
    case Ricorex.Supervisor.start_link() do
      {:ok, pid} ->
        :ok = :riak_core.register(vnode_module: Ricorex.VNode)
        :ok = :riak_core_node_watcher.service_up(Ricorex.Service, self())
        {:ok, pid}

      {:error, reason} ->
        Logger.error("Unable to start Ricorex supervisor because: #{inspect(reason)}")
    end
  end
end

