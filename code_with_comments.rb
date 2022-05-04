#NIM
#anteckningar
# PVP
# 14 pinnar
# plocka 1-3 pinnar
# MÅL = inte plocka sista pinnen
# slumpa antal pinnar och vilken spelare som börjar
#slut på anteckningar
 
# Beskrivning:                                 Spelet Nim går ut på att två spelare tar emot ett antal pinnar och ska sedan turas om med att dra 1-3 pinnar var. Den som drar de sista pinnarna förlorar så det gäller att räkna i huvudet och tänka smart! Spelet fungerar på följande sätt: har två funktioner där den första, nim(), låter spelarna turas om att dra 1-3 pinnar från ett slumpat antal och den andra funktionen, main(), som tar emot spelarnas namn via gets. När antalet pinnar är mindre än eller lika med antingen 0 frågar den om spelarna vill spela igen eller inte. Beroende på svar skickas antingen en hälsning ut eller så kallas nim-funktionen och spelet börjar om.
#
# Argument 1:                                   Strängar - med input från användare via gets samt output i form av puts.
# Argument 2:                                   Integer - talen som slumpmässas i programmet och talen som spelarna skriver in när de ska dra 1-3 pinnar.
# Argument 3                                    
# Return                                        Sträng - kommentar med vilken spelare som vunnit i form av output med stränginterpolering samt en del puts för att fråga om information från spelarna.

# Exempel:      

# Hej och välkommen till spelet NIM 
#Spelare 1, skriv in ditt namn här
#Hanna
#Välkommen HANNA du är spelare 1    
#Spelare 2, skriv in ditt namn här
#Felicia
#Välkommen FELICIA du är spelare 2
#Detta är de antal pinnar ni kommer att spela med:
#9
#HANNA kommer att få börja
#HANNA dra 1-3 pinnar
#3
#antal pinnar som finns kvar 6
#FELICIA dra 1-3 pinnar
#3
#antal pinnar som finns kvar 3
#HANNA dra 1-3 pinnar
#1
#antal pinnar som finns kvar 2
#FELICIA dra 1-3 pinnar
#2
#antal pinnar som finns kvar 0
#FELICIA drog alla pinnar som fanns, så du förlorar!
#Vill du spela igen? (ja/nej)

# Av:                                           Felicia & Hanna
# Datum:                                        2022-05-03





def other_player(cur_player)                    #returnerar den andra spelarens nummer baserat på vilket nummer cur_player har
    if cur_player == 1
        return 2
    else
        return 1
    end
end

def player_name(player_number, player1, player2)               #returnerar namnet på spelare player_number givet spelarnas namn som de skriver in.
    if player_number == 1
        return player1
    else
        return player2
    end
end

def Nim(player1, player2)                                                       #huvudsakliga game-loopen

    puts "Detta är de antal pinnar ni kommer att spela med:"                    #slumpar antalet pinnar som spelarna har att spela med
    amount_sticks =  rand(9..14)
    puts amount_sticks

    first_player = rand(1..2)                       #slumpar vem som börjar. här är sista hjälpfunktionen relevant då den ger siffran ett namn
    puts "#{player_name(first_player,player1,player2)} kommer att få börja"

    cur_player = first_player
  
    while amount_sticks > 1                     #här turas spelarna om, #{player_name(cur_player,player1,player2)} returnerar namnet på curr_player
        puts "#{player_name(cur_player,player1,player2)} dra 1-3 pinnar"

        users_number = gets.chomp.to_i

        if users_number > 0 && users_number < 4   #tar antalet som spelaren skriver in och subtraherar detta med antalet pinnar. sedan berättar den hur många pinnar som är kvar samt avslutar programmet om spelaran skriver in ett tal som inte är mellan 1-3

            amount_sticks = amount_sticks - users_number     #subtraherar
            
            puts "antal pinnar som finns kvar #{amount_sticks}"        
        else
            puts "Du skulle ju välja ett tal mellan 1 till 3. Försök igen!" 
            return
        end

        cur_player = other_player(cur_player)         #byter nuvarande spelare till nästa (other_player ger oss andra siffran till det värde den har nu)
    end

    if amount_sticks == 1             #om mängden sticks redan är lika med 1 eller blir 1 när det är sista spelaren tur eller har dragit de sista pinnarna förlorar hen och ett meddelande skickas ut. 
        puts "Med en eller färre pinnar kvar förlorar #{player_name(cur_player,player1,player2)}!"
    elsif amount_sticks <= 0        #om det var curr_player som drog de sista pinnarna förlorar hen och ett meddelande skickas ut
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