#NIM

# PVP
# 14 pinnar
# plocka max 3 pinnar
# MÅL = inte plocka sista pinnen
# Steg 1 skriva in namn
#slumpa antal pinnar och slumpa vilken spelare som börjar 


# Beskrivning 


def Nim()

    puts "Hej och välkommen till spelet NIM"                   

    puts "Spelare 1, skriv in ditt namn här"
    input_spelare_1 = gets.chomp 

    puts "Spelare 2, skriv in ditt namn här"
    input_spelare_2 = gets.chomp 

    puts "Detta är de antal pinnar ni kommer att spela med:"
    antal_pinnar =  puts rand(0..14)

    puts "Selare #{rand(1..2)} kommer att få börja"
    
end

Nim()
