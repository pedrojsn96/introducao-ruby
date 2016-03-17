# Author: Pedro José de Souza Neto
# email: pjsn@cin.ufpe.br
# date: 16-Mar-2016


def sum(array) ## retorna a soma de todos os elementos do array
    array.inject(0){|sum,x| sum + x}
end

def max_2_sum(array) ## retorna a soma de dois maiores elementos do array
    if array.empty?
        return "zero"
    elsif array.length == 1
        return array.first
    else
        i = 2
        e1 = array[0]
        e2 = array[1]
        until i==(array.length)
            if e1 > e2
                array[i] > e2 ? e2=array[i]: false
            else
                array[i] > e1 ? e1=array[i]: false
            end
            i+=1
        end
        return e1+e2
    end
end

def sum_to_n?(array,n) ## Retorna true se n for igual a soma de dois elementos do array
    if array.empty? || array.length == 1
        return false
    else
        for i in (0...array.length)
            j = i+1
            until j == array.length
                if array[i]+array[j] == n 
                    yes = true
                    break if yes == true
                else
                    yes = false
                end
                j += 1
            end
            break if yes == true
        end
        return yes
    end
end


puts sum([1,2,3])
puts max_2_sum([1,2,3,9])
puts sum_to_n?([1,2,3,9],12)