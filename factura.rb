def multiplicar(n_cantidad,n_pu)
    n_cantidad * n_pu
end

cantidad= ARGV[0]
pu= ARGV[1]

n_cantidad=cantidad.to_i
n_pu=pu.to_i

n_total=multiplicar(n_cantidad,n_pu)

puts "Total = $#{n_total}"