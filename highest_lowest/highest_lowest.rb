#Beskrivning: 
#Argument 1:
#Return: 
#Exempel:



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
        
        puts "Du har valt #{tal}, Den största talen är #{array[-1]}, Den minsta talen är #{array[0]}, Välj ett siffra för att fortsätta"

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
        lista.puts ("antal tal är #{total}, #{array} största tal är #{array[-1]}, minsta tal är #{array[0]}")
        lista.close 

    end

