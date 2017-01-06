defmodule Pong do

  def start do
    loop(0)
  end

  def loop(count) do
    receive do
      {:ping, pid} ->
        send(pid, {:pong, self})
    end
    IO.puts "Pong received a ping #{count + 1} times"
    loop(count + 1)
  end
end


