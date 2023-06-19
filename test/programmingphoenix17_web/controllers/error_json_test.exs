defmodule Programmingphoenix17Web.ErrorJSONTest do
  use Programmingphoenix17Web.ConnCase, async: true

  test "renders 404" do
    assert Programmingphoenix17Web.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert Programmingphoenix17Web.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end
