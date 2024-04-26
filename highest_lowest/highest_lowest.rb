
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

    array = []
    tal = 0
    quit = 0
    while quit != "q" 
        puts "Skriv in ett heltal:"

        tal = gets.chomp.to_i

        array << tal

        array = bubble_sort(array)
        
        puts "Du har valt #{tal}, Den största talen är #{array[-1]}, Den minsta talen är #{array[0]}, Vill du fortsätta? Ja = 1 Nej = q"

        quit = gets.chomp 

        total = array.count
        lista = File.open("lista.txt", "w")
        lista.puts ("antal tal är #{total}, största tal är #{array[-1]}, minsta tal är #{array[0]}")
        lista.close 
    
    end

