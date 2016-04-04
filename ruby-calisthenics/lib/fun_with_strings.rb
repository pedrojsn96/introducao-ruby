# Author: Pedro José de Souza Neto
# email: pjsn@cin.ufpe.br
# date: 25-Mar-2016

module FunWithStrings
  def palindrome?
    # your code here
    self.downcase!
    if self !~ /[^a-z]/
      self == self.reverse ? true: false
    else
      true
    end
  end
  def count_words
    # your code here
    hash = {}
    array = self.split
    if array.empty?
      hash
    else
      array.each do |x|
        x.gsub!(/[[:punct:]]/,'')
        next if x == ''
        if hash.has_key?(x.downcase) == true
          hash[x.downcase] += 1
        else
          hash[x.downcase] = 1
        end
      end
      return hash
    end
  end
  def anagram_groups
    # your code here
    resposta ||= []
    array = self.split
    if array.empty? || self !~ /[a-zA-Z]/
      return []
    else
      hash = {}
      array.each do |x|
        hash[x.chars.sort.join.downcase] = []
      end
      array.each do |x|
          hash[x.chars.sort.join.downcase] << x
      end
    end
    
    hash.each do |x,y|
      resposta << y.sort
    end
    return resposta.sort
  end
end



class String
  include FunWithStrings
end
