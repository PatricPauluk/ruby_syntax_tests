meu_array = [100, 200, 300, 400, 500]

puts "Primeiro array: "
puts meu_array[0]
puts
puts "Segundo array: "
puts meu_array[1]
puts
puts "Terceiro array: "
puts meu_array[2]
puts
puts "Quarto array: "
puts meu_array[3]
puts
puts "Quinto array: "
puts meu_array[4]

puts

puts "Altera e exibe o terceiro array: "
meu_array[2] = 700
puts meu_array[2]

puts

puts "Cria um array vazio, insere valores nele e exibe:"
array_vazio = []
array_vazio[0] = 50
array_vazio[1] = 150
array_vazio[2] = 300
puts array_vazio[0] 
puts array_vazio[1]
puts array_vazio[2]

puts

puts "Exibe todo o conteúdo do array: "
puts array_vazio

puts

puts "Alimentando o array, utilizando '<<':"
novo_array = []
novo_array << 500
novo_array << 100
novo_array << 300
puts novo_array