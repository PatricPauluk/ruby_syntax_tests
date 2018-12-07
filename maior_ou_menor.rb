#variavel
limite = 3
total_chutes = 0
chutes = []
pontos = 1000

#variáveis globais são definidas com $ no inicio, exemplo: $numero

#funções
def welcome   
    puts "Bem vindo ao jogo de adivinhação."

    puts

    puts "Qual seu nome?"
    
    #captura a informação digitada pelo usuário
    #toda informação digitada pelo usuário é interpretada como string
    nome = gets

    puts "\n\n\n"

    puts "O jogo irá iniciar, "+nome
end

def sorteio
    puts "Escolhendo um numero secreto entre 0 e 200..."
    sorteado = 175
    puts "Escolhido, já pode adivinhar!"
    #em Ruby, 'return sorteado' não é utilizado normalmente o comandor return, apenas o nome da variavel
    sorteado
end

def solicita_numero(tentativa, limite)
    puts
    #quando é inserido '.to_s' no fim de uma variável, ela é convertida para string apenas para exibição
    puts "Qual numero você acha que é? Tentativa: "+tentativa.to_s+" de "+limite.to_s
    jogador = gets

    puts

    puts "Seu chute é: "+jogador
    #'.to_i' converte a variável para integer
    jogador.to_i
end

def verifica(acerto, maior, pontos, chutes)
    if acerto
        puts "Acertou!"
        puts "Você ganhou #{pontos} pontos."
        
        puts
        
        puts "Seus chutes chutes:"
        puts chutes
        
        #return pode ser utilizado em casos específicos, como neste caso, conhecido como early return
        return true
    else
        puts "Errou. :("
        if maior
            puts "Numero informado MAIOR que o numero secreto."
        else
            puts "Numero informado MENOR que o numero secreto."
        end
    end
    false
end

#puts sem nenhuma mensagem pula a linha
puts

#chamando função welcome
welcome

#\n pula uma linha de cada vez
puts "\n\n\n"

numero_secreto = sorteio

for tentativa in 1..limite
    #ruby permite não inserir parenteses quando se chama uma função
    #numero_jogador = solicita_numero(tentativa, limite)
    chute = solicita_numero tentativa, limite
    #chutes[total_chutes] = chute
    chutes << chute
    total_chutes += 1
    
    acerto = chute == numero_secreto
    maior = chute > numero_secreto
    
    pontos = chute - numero_secreto / 2
    
    #em ruby, também não é necessário fazer o if como na forma abaixo (forma mais conhecida)
    #
    #if verifica(acerto, maior)
    #    break
    #end
    #
    #pode ser feito como na forma abaixo.
    break if verifica acerto, maior, pontos, chutes
end

