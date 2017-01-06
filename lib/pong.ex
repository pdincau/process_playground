defmodule Pong do

  def start do
    loop
  end

  def loop do
    receive do
      {:ping, pid} ->
        IO.puts "pong received"
        send(pid, {:pong, self})
    end
    loop
  end
end


