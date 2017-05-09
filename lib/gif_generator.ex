defmodule GifGenerator do
  @giphy Application.get_env(:gif_generator, :giphy)
  @http_client Application.get_env(:gif_generator, :http_client)

  def generate(theme) do
    with {:ok, url} <- image_url(theme),
    {:ok, binary} <- download_image(url) do
      {:ok, binary}
    end
  end

  defp image_url(tag) do
    %{"data" => %{"image_url" => image_url}} = @giphy.random(tag)
    {:ok, image_url}
  end

  defp download_image(url) do
    {:ok, %HTTPoison.Response{body: binary}} = @http_client.get(url)
    {:ok, binary}
  end
end
