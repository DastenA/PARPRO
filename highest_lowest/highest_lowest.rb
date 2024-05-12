# Beskrivning:
# Denna kod implementerar en bubbel sortering för att sortera en lista med heltal. 
# Användaren får mata in heltal i en while-loop tills de väljer att avsluta programmet genom att skriva "q". 
# Programmet skriver sedan ut den största och minsta siffran i listan efter varje inmatning, samt antalet siffror.
# Till sist sparar programmet resultatet i en fil "lista.txt".

# Argument 1: Numbers - Array
# En array som innehåller heltal att sortera.

# Return: Array
# Returnerar en array med heltal sorterade i stigande ordning.

# Exempel 1:
# bubble_sort([3, 1, 2]) => [1, 2, 3]
# Returnerar en sorterad array där 1 är minsta talet och 3 är det största talet.

# Exempel 2:
# bubble_sort([10, 5, 8, 2]) => [2, 5, 8, 10]
# Returnerar en sorterad array där 2 är minsta talet och 10 är det största talet.

# Exempel 3: 
# bubble_sort([4, g, 1, 6]) => [0, 1, 4, 6]
# Returnerar en sorterad array där 0 är minsta talet och 6 är största talet, då bubble sort räknar in g som 0.

#By: Dasten Mohamad Amin och Cecilia Ciyako Karlsson
#Date: 2024-05-03

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
        
        puts "Du har valt #{tal}, Den största talen är #{array[-1]}, Den minsta talen är #{array[0]}, Välj ett siffra för att fortsätta, eller tryck på q om du vill avsluta programmen"

        quit = gets.chomp


        if quit.to_i.to_s != quit
            puts "Du har skrivit in q eller annat ogiltigt tecken, vill du skriva in ett nytt heltal eller avsluta programmet? Om du har tryckt q kan du trycka q för att avsluta"

            tal = gets.chomp.to_i

            array << tal

            array = bubble_sort(array)

            array.delete_at(0)
        end
    
        total = array.count
        lista = File.open("lista.txt", "w")
        lista.puts ("antal tal är #{total}, största tal är #{array[-1]}, minsta tal är #{array[0]}")
        lista.close 

    end

