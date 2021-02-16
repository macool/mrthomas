defmodule MrthomasWeb.PageController do
  use MrthomasWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html", pairs: pairs)
  end

  def show(conn, %{ "id" => id }) do
    render(conn, "show.html", pair: id, pairs: pairs)
  end
  
  defp pairs do
	{:ok, body} = File.read("pairs.txt")
    :binary.split(body, "\n", [:global, :trim])
  end
end
