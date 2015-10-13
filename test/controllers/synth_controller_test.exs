defmodule Yougu.SynthControllerTest do
  use Yougu.ConnCase

  test "GET /synth" do
    conn = get conn(), "/synth"
    assert html_response(conn, 200) =~ "Hello World, from Phoenix!"
  end
  
  test "GET /synth/:synth" do
    conn = get conn(), "/synth/Roland"
    assert html_response(conn, 200) =~ "Hello Roland!"
  end
end
