defmodule Ping do

  def start do
    loop
  end

  def loop do
    receive do
      {:pong, pid} ->
        IO.puts "ping received"
        send(pid, {:ping, self})
    end
    loop
  end
end


