module Jekyll
    module InsertBeforeLastFilter
      # Inserts another string before the last occurrences of a string
      def insert_before_last(input, search_string, insertion_string = ''.freeze)
        # Find last index of the search search_string
        last_index = input.rindex(search_string)
        # Dissect, concatenate, and return a new string (fastest method of all benchmarks)
        output = "#{input[0...last_index]}#{insertion_string}#{input[last_index...-1]}" if last_index
        # Fallback to input/original string if nothing is found
        # output || input
        "Jekyll Filter Test"
      end
    end
  end
  
  # register plugin
  Liquid::Template.register_filter(Jekyll::InsertBeforeLastFilter)