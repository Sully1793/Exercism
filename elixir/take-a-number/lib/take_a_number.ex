defmodule TakeANumber do
  def start() do

  spawn(fn -> loop(0)  end)
  end

  defp loop(number) do
    receive do
      {:report_state, sender} ->
        send(sender, number)
        loop(number)

      {:take_a_number, sender} ->
        send(sender, number + 1)
        loop(number + 1)

        :stop -> nil

        _ -> loop (number)
    end

  end
end
