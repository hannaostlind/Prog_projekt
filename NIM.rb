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



def Nim()

    puts "Hej och välkommen till spelet NIM"                   

    puts "Spelare 1, skriv in ditt namn här"
    input_player_1 = gets.chomp 

    puts "Spelare 2, skriv in ditt namn här"
    input_player_2 = gets.chomp 

    puts "Detta är de antal pinnar ni kommer att spela med:"
    amount_sticks =  puts rand(0..14)

    first_player = puts "Spelare #{rand(1..2)} kommer att få börja"
    #funkar ej, kan nog inte ha puts i högerled

end

Nim()
