#NIM
 
# PVP
# 14 pinnar
# plocka max 3 pinnar
# MÅL = inte plocka sista pinnen
# Steg 1 skriva in namn
# slumpa antal pinnar och vilken spelare som börjar
 
 
# Beskrivning:                                  Programmet tar emot input från användaren och sedan slumpar antalet pinnar att börja med
#                                               samt vilken spelare som får börja. Sedan 
# Argument 1:                                   Strängar - med input från användare samt output i form av puts
# Argument 2:                                   Integer - talen som slumpmässas i programmet
# Argument 3                                    
# Return                                        Sträng - kommentar med vilken spelare som vunnit i form av output med stränginterpolering
# Exempel:                                      
#                                               puts "#{player_name(cur_player,player1,player2)} har vunnit"
#
# Av:                                           Felicia & Hanna
# Datum:                                        2022-04-19

def other_player(cur_player)                    #returnerar den andra spelarens nummer baserat på vilket nummer curr_player har
    if cur_player == 1
        return 2
    else
        return 1
    end
end

def player_name(player_number, player1, player2)                 #returnerar namnet på spelare player_number givet spelarnas namn som de skriver in.
    if player_number == 1
        return player1
    else
        return player2
    end
end

def Nim(player1, player2)                                                       #huvudsakliga game-loopen

    puts "Detta är de antal pinnar ni kommer att spela med:"                    #slumpar antaket pinnar som spelarna har att spela med
    amount_sticks =  rand(9..14)
    puts amount_sticks

    first_player = rand(1..2)                                                   #slumpar vem som börjar. här är sista hjälpfunktionen relevant då den ger siffran ett namn
    puts "#{player_name(first_player,player1,player2)} kommer att få börja"

    cur_player = first_player
  
    while amount_sticks > 1                                                     #här turas spelarna om, #{player_name(cur_player,player1,player2)} returnerar namnet på curr_player
        puts "#{player_name(cur_player,player1,player2)} dra 1-3 pinnar"

        users_number = gets.chomp.to_i

        if users_number > 0 && users_number < 4   #tar antalet som spelaren skriver in och subtraherar detta med antalet pinnar. sedan berättar den hur många pinnar som
                                                     #är kvar samt avslutar programmet om spelaran skriver in ett tal som inte är mellan 1-3
            amount_sticks = amount_sticks - users_number 
            
            puts "antal pinnar som finns kvar #{amount_sticks}"        
        else
            puts "Du skulle ju välja ett tal mellan 1 till 3. Försök igen!" 
            return
        end

        cur_player = other_player(cur_player)                   #byter nuvarande spelare till nästa (other_player ger oss andra siffran till det värde den har nu)
    end

    if amount_sticks == 1                                       #om mängden shticks redan är lika med 1 eller blir 1 när det är sista spelaren tur eller har dragit de sista pinnarna förlorar hen och ett meddelande skickas ut. 
        puts "Med en pinne kvar förlorar #{player_name(cur_player,player1,player2)}!"
    elsif amount_sticks == 0                                    #om det var curr_player som drog de sista pinnarna förlorar hen och ett meddelande skickas ut
        puts "#{player_name(other_player(cur_player),player1,player2)} drog alla pinnar som fanns, så du förlorar!"
    end
end

def main()    #i denna funktion tar vi reda på spelarnas namn genom att kalla på nim-funktionen. Dessutom frågar denna funktion om de vill spela igen eller inte när sista pinnen dragits. beroende på svaret från spelarna kör den isåfall om Nim-funktionen eller skickar ut en puts där man tackar och bockar för att de spelat spelet.
    puts "Hej och välkommen till spelet NIM"                  
 
    puts "Spelare 1, skriv in ditt namn här"
    player1 = gets.chomp.upcase    
    puts "Välkommen #{player1} du är spelare 1"

 
    puts "Spelare 2, skriv in ditt namn här"
    player2 = gets.chomp.upcase
    puts "Välkommen #{player2} du är spelare 2"

    Nim(player1, player2)
    
    run = true
    while run
        puts "Vill du spela igen? (ja/nej)"
        ans = gets.chomp

        if ans == "nej"
            run = false
        else
            puts "Najs, då kör vi igen!"
            Nim(player1,player2)
        end
    end

    puts "Tack och adjö"
end


main()