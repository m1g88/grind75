defmodule Grind75.ValidParenthesesTest do
  use ExUnit.Case
  alias Grind75.ValidParentheses

  test "is_valid" do
    for pattern <- ["{[]}", "(){}[]", "[]"] do
      assert ValidParentheses.is_valid(pattern) == true
    end
  end
end
