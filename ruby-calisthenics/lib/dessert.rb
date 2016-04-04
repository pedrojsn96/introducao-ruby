# Author: Pedro José de Souza Neto
# email: pjsn@cin.ufpe.br
# date: 25-Mar-2016
class Dessert
  attr_accessor :name
  attr_accessor :calories
  def initialize(name, calories)
    # your code her
    @name = name
    @calories = calories
  end
  def healthy?
    return @calories < 200? true: false
  end
  def delicious?
    return true
  end
end

class JellyBean < Dessert
  attr_accessor :flavor
  def initialize(flavor)
    # your code here
    @flavor = flavor
    @calories = 5
    @name = "#{@flavor} jelly bean"
  end
  def delicious?
    return @flavor == "licorice"?false:true
  end
end


