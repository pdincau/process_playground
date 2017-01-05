defmodule PingTest do
  use ExUnit.Case

  test "it responds to a pong with a ping" do
defmodule Ping do

  def start do
    loop
  end

  def loop do
    receive do
      {:pong, pid} ->
        send(pid, {:ping, self})
    end
    loop
  end
end

    ping = spawn_link(Ping, :start, [])
    send(ping, {:pong, self})

    assert_receive {:ping, ping}
  end

  test "it responds to two pongs with two pings" do
    ping = spawn_link(Ping, :start, [])
    send(ping, {:pong, self})
    
    assert_receive {:ping, ping}
    
    send(ping, {:pong, self})

    assert_receive {:ping, ping}

  end
end
