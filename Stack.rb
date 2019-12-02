class Stack
    def initialize
      @data = []
    end
  
    def push(element)
      @data.push(element)
    end
  
    def pop
      @data.pop
    end
  
    def empty?
      @data.empty?
    end

    def print
        #@data.each { |element| puts element}
        puts @data
    end     
end

stack = Stack.new
stack.push(1)
stack.push(2)
stack.push(3)
stack.print
