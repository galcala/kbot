def multiplicar(n_cantidad,n_pu)
    n_cantidad * n_pu
end

cantidad= ARGV[0]
pu= ARGV[1]

n_cantidad=cantidad.to_i
n_pu=pu.to_i

n_subtotal=multiplicar(n_cantidad,n_pu)
n_total=n_subtotal

puts "# #{n_cantidad} * $#{n_pu} = $#{n_subtotal}"
puts "Total = $#{n_total}"