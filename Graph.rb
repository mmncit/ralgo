class Vertex

    attr_accessor :value, :neighbors, :weights

    def initialize(value)
        @value = value
        @neighbors = []
        @weights = []
    end

    def add_edge(index_of_adjacent_vertex, weight = nil)
        @neighbors[index_of_adjacent_vertex] = true # update the index position adjacent vertex 
        @weights[index_of_adjacent_vertex] = weight if weight
    end

    # returns the indices of the neighbors as a list
    def get_indices_of_neighbors()
        index_arr_of_neighbors = [] # empty array for list of neighbors
        for i in 0..(neighbors.length - 1) do
            if neighbors[i] == true # if adjacent vertex is present
                index_arr_of_neighbors << i # append the index
            end
        end
        return index_arr_of_neighbors
    end
end

class Graph
    attr_accessor :vertices

    def initialize()
        @vertices = [] #initialized with an array of vertices
    end
    
    # add a vertex by value
    def add_vertex(value)
        @vertices << Vertex.new(value)
    end

    # returns vertex for given value
    def vertex_by_value(value)
        vertices.each do |v|
            return v if v.value == value
        end
        nil
    end

    # returns vertex given by index
    def vertex_by_index(idx)
        return vertices[idx]
    end

    # returns index for a value of vertex
    def get_index_by_vertex_value(value)
        return vertices.index {|v| v.value == value}
    end
    
    # returns the number of vertices
    def number_of_vertices
        vertices.length
    end

    def add_edge(start_value, end_value, weight = nil, undirected = true)
        # add the vertices if they are not present
        if get_index_by_vertex_value(start_value).nil?
            add_vertex(start_value)
        end
        if get_index_by_vertex_value(end_value).nil? 
            add_vertex(end_value)
        end

        # find the indices of the vertices
        from = get_index_by_vertex_value(start_value)
        to   = get_index_by_vertex_value(end_value)

        # add edge to the vertice
        vertices[from].add_edge(to, weight)

        if undirected
            # create an edge that runs in the reverse direction
            vertices[to].add_edge(from, weight)
        end
    end
    
    # perform recursive dfs for current vertex with index idx
    def dfs_recursive(idx, visited)

        # mark the current vertex as visited and print
        visited[idx] = true
        print "#{vertices[idx].value} "

        # recur for all the adjacent vertices
        v = vertex_by_index(idx)
        indices_of_neighbors = v.get_indices_of_neighbors()
        indices_of_neighbors.each do |i|
            if visited[i] == false
                dfs_recursive(i, visited)
            end
        end
    end
    
    def depth_first_traverse_from_vertex_by_value(value)
        
        # mark all the vertices as not visited
        visited = Array.new(number_of_vertices, false)

        # get the index of the vertex
        index_of_starter = get_index_by_vertex_value(value)
        
        # call the recursive helper function
        dfs_recursive(index_of_starter, visited)

    end

end

graph = Graph.new
graph.add_edge("A", "B")
graph.add_edge("A", "C")
graph.add_edge("B", "D")
graph.add_edge("B", "E")
graph.add_edge("C", "E")
graph.add_edge("D", "E")
graph.add_edge("D", "F")
graph.add_edge("E", "F")
graph.depth_first_traverse_from_vertex_by_value("A")
