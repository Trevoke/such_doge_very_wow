module SuchDogeVeryWow
  class Parser
    def initialize(dson)
      @dson = dson
      @current_node_index = 0
      @nodes = @dson.split(' ')
      @parsed_hash = {}
    end

    def call
      while current_node_index < nodes.length
        case nodes[current_node_index]
        when 'such' then new_key
        when 'is' then new_value
        when 'wow' then add_key_value_pair
        end
        increment_node_index
      end
      parsed_hash
    end

    private

    attr_accessor :dson, :current_node_index, :parsed_hash, :nodes

    def increment_node_index
      @current_node_index += 1
    end

    def new_key
      increment_node_index
      next_key = nodes[current_node_index]
      return if next_key == 'wow'
      @key = clean next_key
    end

    def new_value
      next_key = nodes[current_node_index + 1]
      key_type = next_key == 'so' ? 'array' : 'value'
      if key_type == 'value'
        increment_node_index
        @value = clean nodes[current_node_index]
      end
    end

    def clean(doge_bit)
      doge_bit.scan(/"(.*)"/)[0][0]
    end

    def add_key_value_pair
      parsed_hash[@key] = @value
      @key = @value = nil
    end

  end
end
