
faturamentos = {"SP" => 67836.43, "RJ" => 36678.66, "MG" => 29229.88, "ES" => 27165.48, "Outros" => 19849.53}
soma_faturamento = faturamentos.map{|regiao, valor| valor}.sum

faturamentos.each {|regiao, valor| 
    puts "Percentual de #{regiao} é #{valor*100.fdiv(soma_faturamento)}"
}



