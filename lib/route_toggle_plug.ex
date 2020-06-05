defmodule RouteTogglePlug do
  import Plug.Conn

  def init(opts) do
    opts
  end

  def call(conn = %{request_path: path}, paths: paths, key: key) do
    if path not in paths || Application.get_env(:route_toggle_plug, key) do
      conn
    else
      conn
      |> Plug.Conn.resp(404, "Not found")
      |> halt
    end
  end

  def call(conn, _opts) do
    conn
  end
end
