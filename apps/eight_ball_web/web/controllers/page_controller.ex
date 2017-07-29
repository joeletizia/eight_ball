defmodule EightBallWeb.PageController do
  use EightBallWeb.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
