def multiplicar(n_cantidad,n_pu)
    @n_total = n_cantidad * n_pu
end

cantidad= ARGV[0]
pu= ARGV[1]

n_cantidad=cantidad.to_i
n_pu=pu.to_i

n_total=0


puts "hola, mundo"
puts "#{cantidad}"
puts "#{pu}"
puts multiplicar(n_cantidad,n_pu)