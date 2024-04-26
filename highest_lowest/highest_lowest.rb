
def bubble_sort (numbers)

    counter = 0
    while counter < numbers.length 
        i = 0
        while i < numbers.length - 1
            if numbers[i] > numbers[i + 1]
                tmp = numbers[i]
                numbers[i] = numbers[i + 1]
                numbers[i + 1] = tmp
            end
            i += 1
        end
        counter += 1
    end
    return numbers
end

def highest_lowest (array)
    array = []
    puts "Skriv in ett heltal:"

    tal = gets.chomp.to_i

    array << tal

    puts "Du har valt #{tal}, Den största talen är #{array[0]}, Den minsta talen är #{array[-1]} Vill du fortsätta? Ja = 1 Nej = q"

end
while
    
