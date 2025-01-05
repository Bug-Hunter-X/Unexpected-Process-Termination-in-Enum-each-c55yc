```elixir
list = [1, 2, 3, 4, 5]

result = Enum.map(list, fn x ->
  if x == 3 do
    {:error, :skipped}
  else
    {:ok, x}
  end
end)

Enum.each(result, fn
  {:ok, x} -> IO.puts(x)
  {:error, _} -> nil
end)
```