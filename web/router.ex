defmodule Yougu.Router do
  use Yougu.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Yougu do
    pipe_through :browser # Use the default browser stack

    get "/", WelcomeController, :index
    get "/synth", SynthController, :index
    get "/synth/:synth", SynthController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", Yougu do
  #   pipe_through :api
  # end
end
