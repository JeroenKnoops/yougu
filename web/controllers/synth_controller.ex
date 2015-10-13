defmodule Yougu.SynthController do
  use Yougu.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
  
  def show(conn, %{"synth" => synth}) do
    render conn, "show.html", synth: synth
  end
end
