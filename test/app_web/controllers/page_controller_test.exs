defmodule AppWeb.PageControllerTest do
  use AppWeb.ConnCase

  test "GET /api", %{conn: conn} do
    conn = get(conn, "/api")
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end
end
