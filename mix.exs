defmodule Riakc.Mixfile do
  use Mix.Project

  @version File.read!("VERSION") |> String.strip

  def project do
    [app: :riak_client,
     version: @version,
     description: "The Riak client for Erlang",
     package: package(),
     deps: deps()]
  end

  defp deps do
    [
      {:riak_pb, "~> 2.3"},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp package do
    [files: ~w(include src mix.exs LICENSE Makefile README.md RELNOTES.md rebar.config rebar.config.script tools.mk tools test priv VERSION),
     maintainers: ["Gonçalo Tomás"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/goncalotomas/riakc"}]
  end
end
