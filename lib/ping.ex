defmodule Ping do

  def start do
    loop(0)
  end

  def loop(count) do
    receive do
      {:pong, pid} ->
        send(pid, {:ping, self})
    end
    IO.puts "Ping received a pong #{count + 1} times"
    loop(count + 1)
  end
end


