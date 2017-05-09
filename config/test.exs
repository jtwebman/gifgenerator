use Mix.Config

config :gif_generator,
  generator: FakGifGenerator,
  giphy: FakeGiphy,
  http_client: FakeHttpClient
