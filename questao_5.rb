

def inverte_string(entrada)
    vetor_auxiliar = entrada.split("")
    i = 0;
    j = vetor_auxiliar.length - 1

    while i < j do
        vetor_auxiliar[i], vetor_auxiliar[j] = vetor_auxiliar[j], vetor_auxiliar[i]
        i += 1
        j -= 1
    end

    return vetor_auxiliar.join
end

entrada = "123456789"

puts inverte_string(entrada)




