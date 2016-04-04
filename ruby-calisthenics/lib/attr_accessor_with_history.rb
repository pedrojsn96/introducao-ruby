# Author: Pedro José de Souza Neto
# email: pjsn@cin.ufpe.br
# date: 30-Mar-2016
class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s # make sure it's a string
    attr_accessor attr_name ## create getters e setters
    attr_reader attr_name+"_history" # create bar_history getter
    class_eval %Q{
      # YOUR CODE HERE
      def #{attr_name}= value
        @#{attr_name}_history ||= []
        
        ## Pego o valor atual de attr_name
        @#{attr_name}_history << #{attr_name}
        
        ## Atualizo o valor em attr_name
        @#{attr_name} = value
      end
      def #{attr_name}_history
        @#{attr_name}_history
      end
    }
  end
end

