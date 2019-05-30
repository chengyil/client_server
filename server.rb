#!/usr/bin/env ruby

require 'socket'

def main
  puts Process.pid
  listen
end

def listen
  TCPServer.new('localhost', 8443).tap do |server|
    while true
      begin
        s = server.accept
        s.puts Time.now
        p 'done'
      rescue => e
        p e.inspect
      end
    end
  end
end

main
