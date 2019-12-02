#!/usr/bin/ruby

require_relative "node"
# implement a singly linked list
class LinkedList 
    
    attr_reader :length

    # initialization
    def initialize
        @head = nil
        @length = 0
    end
    
    # inserts new value
    def append(value)
    end
    
    # returns tail
    def tail
        node = @head
        while !node.next
            node = node.next
        end
        return node
    
        

end