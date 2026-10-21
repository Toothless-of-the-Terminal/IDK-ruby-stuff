loop do
   puts "Convert a decimal or fraction:"
  
   input = gets&.chomp || "0.25"
  
   break if input.downcase == "exit"
    if input.include?("/")
     decimal = input.to_r.to_f
     puts "The decimal is: #{decimal}\n\n"
    
   elsif input.include?(".")
     fraction = input.to_r
     puts "The fraction is: #{fraction}\n\n"
    
   else
     puts "Input a valid fraction/decimal\n\n"
   end
 end
