defmodule MrthomasWeb.PageController do
  use MrthomasWeb, :controller

  def index(conn, _params) do
    {:ok, body} = File.read("pairs.txt")
    pairs = :binary.split(body, "\n", [:global, :trim])
    render(conn, "index.html", pairs: pairs)
  end

  def show(conn, %{ "id" => id }) do
    render(conn, "show.html", pair: id)
  end
end
