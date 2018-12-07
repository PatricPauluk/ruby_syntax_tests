while ver_msg
    puts "Quer ver esta mensagem? 1-Sim / 2-Não"
    num = gets.to_i
    if !num == 1
        ver_msg = false
    end
end