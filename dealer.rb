require "./player" 

class Dealer < Player

    def judge(r1, r2)

        if r1.to_i > 21
            puts "Dealer : Burst"
            puts "You win!"

        else r1.to_i <= 21
            if r1.to_i > r2.to_i
                puts "You lose..."

            elsif r1.to_i < r2.to_i
                puts "You win!"

            elsif r1.to_i == r2.to_i
                puts "Draw(引き分け)"

            end

        end

    end


	def deal_side

	cards = ["A",2,3,4,5,6,7,8,9,10,"J","Q","K",
			 "A",2,3,4,5,6,7,8,9,10,"J","Q","K",
			 "A",2,3,4,5,6,7,8,9,10,"J","Q","K",
			 "A",2,3,4,5,6,7,8,9,10,"J","Q","K"]

		
		number1 = cards.sample

		if number1 == "A"
 	    	number1 = 1
 	    	puts "1枚目のカード：#{number1}"
    	elsif number1 == "J" || number1 == "Q" || number1 == "K"
     		number1 = 10
     		puts "1枚目のカード：#{number1}"
    	else
     		puts "1枚目のカード：#{number1}"
    	end

    	number2 = cards.sample

		if number2 == "A"
 	    	number2 = 1
 	    	puts "2枚目のカード：#{number2}"
    	elsif number2 == "J" || number2 == "Q" || number2 == "K"
     		number2 = 10
     		puts "2枚目のカード：#{number2}"
    	else
     		puts "2枚目のカード：#{number2}"
    	end

    	puts "<手札の合計>"
    	@result1 = open(number1,number2)
    	puts @result1

	end


	def hit

		cards = ["A",2,3,4,5,6,7,8,9,10,"J","Q","K",
				 "A",2,3,4,5,6,7,8,9,10,"J","Q","K",
				 "A",2,3,4,5,6,7,8,9,10,"J","Q","K",
				 "A",2,3,4,5,6,7,8,9,10,"J","Q","K"]

		number3 = cards.sample
		puts "<2回目のドロー>"

		if number3 == "A"
 	    	number3 = 1
 	    	puts "3枚目のカード：#{number3}"
    	elsif number3 == "J" || number3 == "Q" || number3 == "K"
     		number3 = 10
     		puts "3枚目のカード：#{number3}"
    	else
     		puts "3枚目のカード：#{number3}"
    	end

    	puts "<手札の合計>"
    	@result2 = set_card(number3)
    	puts @result2

	end
    

	def play_side

	cards = ["A",2,3,4,5,6,7,8,9,10,"J","Q","K",
			 "A",2,3,4,5,6,7,8,9,10,"J","Q","K",
			 "A",2,3,4,5,6,7,8,9,10,"J","Q","K",
			 "A",2,3,4,5,6,7,8,9,10,"J","Q","K"]

		
		number4 = cards.sample

		if number4 == "A"
 	    	number4 = 1
 	    	puts "1枚目のカード：#{number4}"
    	elsif number4 == "J" || number4 == "Q" || number4 == "K"
     		number4 = 10
     		puts "1枚目のカード：#{number4}"
    	else
     		puts "1枚目のカード：#{number4}"
    	end

    	number5 = cards.sample

		if number5 == "A"
 	    	number5 = 1
 	    	puts "2枚目のカード：#{number5}"
    	elsif number5 == "J" || number5 == "Q" || number5 == "K"
     		number5 = 10
     		puts "2枚目のカード：#{number5}"
    	else
     		puts "2枚目のカード：#{number5}"
    	end

    	puts "<手札の合計>"
    	@result3 = open(number4,number5)
    	puts @result3


        if @result1 >= 17
            judge(@result1,@result3)
        elsif @result1 < 17
            judge(@result2,@result3)
        end


	end


end