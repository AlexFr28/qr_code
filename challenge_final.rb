require 'rqrcode_png'
require 'pry'

puts 'Saisir un texte :'
text = gets.chomp

qr = RQRCode::QRCode.new( text, :size => 4, :level => :h )
png = qr.to_img
png.resize(90, 90).save("text.png")