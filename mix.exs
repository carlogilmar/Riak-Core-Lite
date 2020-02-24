defmodule Ricorex.MixProject do
  use Mix.Project

  def project do
    [
      app: :ricorex,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      releases: releases()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :riak_core],
      mod: {Ricorex.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:riak_core, "~> 0.10.0", hex: :riak_core_lite},
      {:riak_core_lite_util, "~> 0.1.0"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  defp releases do
    [
      dev: [],
      node1: [],
      node2: [],
      node3: []
    ]
  end
end
