class Player
	
	@my_cards = []


	def open(number1,number2)
		@my_cards = number1 + number2
		return @my_cards
	end


	def set_card(number3)
		@my_cards += number3
		return @my_cards
	end


	def check_sum
		if @my_cards >= 17
			return true
		elsif @my_cards < 17
			return false
		end
	end


end