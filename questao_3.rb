require 'json'

f = File.open("dados.json","r")
json =  f.read()
f.close()


#dias do mes com valor igual a zero são desconsiderados
faturamento_filtrado = JSON.parse(json).select{|faturamento_diario| faturamento_diario["valor"] > 0}
valores = faturamento_filtrado.map{|faturamento_diario| faturamento_diario["valor"]}

maximo = valores.max
minimo = valores.min
dias_maior_que_media = valores.select{|valor| valor > (valores.sum.fdiv(valores.length))}.length

puts "Menor valor de faturamento = #{minimo}"
puts "Maior valor de faturamento =  #{maximo}"
puts "Dias maior que a média = #{dias_maior_que_media}"

 




