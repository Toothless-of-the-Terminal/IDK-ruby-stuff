prompt = "Enter a Calculation\n"
loop do
    puts prompt
    prompt = "ANOTHER?\n"
    input = gets.chomp.strip
    break if input.downcase == 'exit' || input.empty?
    input = input.squeeze('*x/_#+')
    if input.match?(/[x*]/)
        numbers = input.split(/\s*[*x]\s*/)
        num0 = numbers[0].to_f
        num1 = numbers[1].to_f
        answer = num0 * num1
        puts "\nanswer is " + "%g\n\n" % answer
    elsif input.match?(/\//)
        numbers = input.split(/\s*[\/]\s*/)
        num0 = numbers[0].to_f
        num1 = numbers[1].to_f
        if num1 == 0
            puts "\nError.\n\n"
        else
              answer = num0 / num1
            puts "\nanswer is " + "%g\n\n" % answer
        end
    elsif input.match?(/[_-]/)
        numbers = input.split(/\s*[_-]\s*/)
        num0 = numbers[0].to_f
        num1 = numbers[1].to_f
        answer = num0 - num1
        puts "\nanswer is " + "%g\n\n" % answer
    elsif input.match?(/[#+]/)
        numbers = input.split(/\s*[+#]\s*/)
        num0 = numbers[0].to_f
        num1 = numbers[1].to_f
        answer = num0 + num1
        puts "\nanswer is " + "%g\n\n" % answer
    else
        puts "Error."
    end
end
