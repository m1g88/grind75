defmodule Grind75.ValidParentheses do
  @spec is_valid(s :: String.t()) :: boolean
  def is_valid(s) do
    s
    |> String.graphemes()
    |> brackets_checker([])
  end

  def brackets_checker(opener, closer \\ [])
  def brackets_checker([], []), do: true
  def brackets_checker(["(" | t], closer), do: brackets_checker(t, [")" | closer])
  def brackets_checker(["[" | t], closer), do: brackets_checker(t, ["]" | closer])
  def brackets_checker(["{" | t], closer), do: brackets_checker(t, ["}" | closer])
  def brackets_checker(["}" | t], ["}" | t_closer]), do: brackets_checker(t, t_closer)
  def brackets_checker(["]" | t], ["]" | t_closer]), do: brackets_checker(t, t_closer)
  def brackets_checker([")" | t], [")" | t_closer]), do: brackets_checker(t, t_closer)
  def brackets_checker(_, _), do: false
end
