defmodule FakeGiphy do
  def random("foo") do
    %{"data" => %{"image_url" => "a_url"}}
  end
  def random(_) do
    %{"error" => %{"message" => "limit hit"}}
  end
end
