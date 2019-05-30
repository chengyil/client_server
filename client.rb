#!/usr/bin/env ruby

require 'socket'

def main
  connect
end

def connect
  socket = TCPSocket.new('localhost',8443)
  while(s = socket.gets)
    puts s
  end
  socket.close
end

main
