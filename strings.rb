puts "Informe seu nome:"
nome = gets
puts nome.size.to_s + " caracteres" #sem interpolação
puts
puts "Observa-se que é contado um caractere a mais informado, isso acontece por que o metodo 'gets' também captura o ENTER pressionado."
puts "Uma solução seria utilizar o metodo 'strip', que não registra caracteres em branco, como espaço ou pulo de linha."
puts
puts "Informe seu nome (agora utilizando 'strip' e interpolação na exibição):"
nome = gets.strip
puts nome.size.to_s + " caracteres"
puts "#{nome} tem #{nome.size} caracteres" #com interpolação, sem utilizar '.to_s'