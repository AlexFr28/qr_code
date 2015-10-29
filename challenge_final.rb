require 'rqrcode_png'
require 'pry'

puts 'Saisir un texte :'
text = gets.chomp

qr = RQRCode::QRCode.new( text, :size => 4, :level => :h )

# save the QRcode
png = qr.to_img
png.resize(90, 90).save("text.png")

# print the QRcode in the terminal
qr.modules.each do |row|
	row.each do |col| 
		print col ? "X" : " "
		end
	print "\n"
end