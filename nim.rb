#NIM
 
# PVP
# 14 pinnar
# plocka max 3 pinnar
# MÅL = inte plocka sista pinnen
# Steg 1 skriva in namn
#slumpa antal pinnar och slumpa vilken spelare som börjar
 
 
# Beskrivning:                                  Programmet tar emot input från användaren och sedan slumpar antalet pinnar att börja med
#                                               samt vilken spelare som får börja.
# Argument 1:                                   Strängar - med input från användare samt output i form av puts
# Argument 2:                                   Integer - talen som slumpmässas i programmet
# Argument 3                                    
# Return                                        Sträng - kommentar med vilken spelare som vunnit i form av output med stränginterpolering (kanske)
# Exempel:                                      
#                                               Nim() #=> "Spelare 1 har vunnit"
#                                               Nim() #=> "Spelare 2 har vunnit"
#
# Av:                                           Felicia & Hanna
# Datum:                                        2022-04-19

require './PROG_PROJEKT/NIM.rb'

system 'cls'


def Nim()

    puts "Hej och välkommen till spelet NIM"                  
 
    #puts "Spelare 1, skriv in ditt namn här"
    #player1 = gets.chomp    
    player1 = "BOLOBOMBOMDRAKEN" 
    puts "Välkommen #{player1} du är spelare 1"

 
    #puts "Spelare 2, skriv in ditt namn här"
    #player2 = gets.chomp
    player2 = "sommarskuggan" 
    puts "Välkommen #{player2} du är spelare 2"

    puts "Detta är de antal pinnar ni kommer att spela med:"
    amount_sticks =  rand(9..14)
    puts amount_sticks

    first_player = rand(1..2)
    puts "Spelare #{first_player} kommer att få börja"
  
    while amount_sticks > 1

        puts "Spelare #{first_player} dra 1-3 pinnar"

        users_number = gets.chomp.to_i

        if users_number > 0 && users_number < 4
            amount_sticks = amount_sticks - users_number 
            
            puts "antal pinnar som finns kvar #{amount_sticks}"        
        else
            puts "Du skulle ju välja ett tal mellan 1 till 3. Försök igen!" 
        end

        puts "#{player2} dra pinnar"

        users_number = gets.chomp.to_i

        if users_number > 0 && users_number < 4
            amount_sticks = amount_sticks - users_number 
            
            puts "antal pinnar som finns kvar #{amount_sticks}"        
        elsif
            puts "Du skulle ju välja ett tal mellan 1 till 3. Försök igen!" 

        # else amount_sticks < 0
        #     return "GAME OVER, DIN MOtSTÅNDARE VANN SPELET NIIIM, ACCEPTERA DET LOSER"
        # end

    end



    #pauses system
    sleep 10
    puts("Do you want to continue?")
    Response = get.chomp()
    if Response == "ja"
        (rerun program here)
    end

    if Response == "nej"
        exit
    end

    # puts "Vill ni spela igen" 
    # svar = gets.chomp

    #     if svar = "ja"
            
    #     else 
    #         puts "tack för att ni spelade"
    #     end
    
end
 
Nim()
 

