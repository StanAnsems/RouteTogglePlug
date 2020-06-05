# RouteTogglePlug

Small plug to toggle routes based on their patch by a environment variable or app config

## Installation

The package can be installed by adding `route_toggle_plug` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:route_toggle_plug, git: "https://github.com/stanansems/RouteTogglePlug.git", tag: "0.1.2"}
  ]
end
```

## Configuration

Add plug
```elixir

plug RouteTogglePlug, paths: ["/docs", "/docs-json"], key: :docs_enabled

```

Configuration to add to config.exs

```elixir
config :route_toggle_plug,
  docs_enabled: true
```

Configure in release.exs to use an ENV variable on runtime
```elixir
config :route_toggle_plug,
  docs_enabled: System.get_env("DOCS_ENABLED")
```
