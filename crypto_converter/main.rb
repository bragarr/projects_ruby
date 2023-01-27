def menu

    loop do
        puts " Crypto Converter  ".center(50, "$")
        puts "a) Convert to BRL"
        puts "b) Convert to USD"
        puts "q) Quit"
        print "Action: "
        choice = gets.chomp
        
        break unless choice != "q"
    end

end

menu()