#!/usr/bin/ruby

require_relative 'node'
# implement a singly linked list
class LinkedList
  attr_reader :length

  # initialization
  def initialize
    @head = nil
    @length = 0
  end

  # inserts new value
  def append(value); end

  # returns tail
  def tail
    node = @head
    node = node.next until node.next
    node
  end
end
