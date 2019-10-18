require "./dealer"


puts "<ディーラーのターン>"
dealer = Dealer.new
dealer.deal_side
puts ""


if dealer.check_sum == true

	puts "Turn end"
	puts ""
	puts "<プレイヤーのターン>"
	dealer.play_side


elsif dealer.check_sum == false

	dealer.hit
	puts "Turn end"
	puts ""
	puts "<プレイヤーのターン>"
	dealer.play_side

end