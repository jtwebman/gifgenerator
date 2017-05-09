defmodule Api do
  use Maru.Router
  @generator Application.get_env(:gif_generator, :generator)

  route_param :theme do
    get do
      {:ok, image} = params[:theme] |> @generator.generate

      conn
      |> put_resp_content_type("image/gif")
      |> send_resp(200, image)
      |> halt
    end
  end
end
