defmodule FakeHttpClient do
  def get("a_url") do
    {:ok, %HTTPoison.Response{body:  <<1,2,3,4,5,6>>}}
  end
  def get(_) do
    {:error, "Something bad happened"}
  end
end
