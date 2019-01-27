defmodule SatoruWeb.PageController do
  use SatoruWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
