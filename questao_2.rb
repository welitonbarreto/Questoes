


def gera_fibonnacci(valor) 
    vetor = [0,1]

    while vetor.last(2).sum <= valor do
        vetor.append vetor.last(2).sum
    end

    vetor
end

valor_buscado = 21;
sequencia =  gera_fibonnacci(valor_buscado)

if sequencia.last == valor_buscado 
    puts  "#{valor_buscado} pertence a sequencia"
else
    puts "#{valor_buscado} nao pertence a sequencia"
end

