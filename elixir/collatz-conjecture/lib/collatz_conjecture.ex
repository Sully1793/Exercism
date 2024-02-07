defmodule CollatzConjecture do
  alias ElixirSense.Core.Guard
  @doc """
  calc/1 takes an integer and returns the number of steps required to get the
  number to 1 when following the rules:
    - if number is odd, multiply with 3 and add 1
    - if number is even, divide by 2
  """
  @spec calc(input :: pos_integer()) :: non_neg_integer()
  def calc(input) do
  evenNumber = Integer.is_even(input)
  oddNumber = Integer.is_odd(input)
    Kernal.div(evenNumber, 2)
  end
end
