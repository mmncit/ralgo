class Node
    attr_accessor :next, :value

    def initialize(value = nil)
        @next = nil
        @value = value
    end

    def to_s
        "Value of the node is: #{@value}"
    end
end