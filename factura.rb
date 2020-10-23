def multiplicar(n_cantidad,n_pu)
    n_cantidad * n_pu
end

def aplicar_impuesto(n_subtotal,estado)
    case estado
    when "CA"
        n_subtotal*0.1
    else
        n_subtotal*0.1
    end
end

cantidad= ARGV[0]
pu= ARGV[1]
estado= 'CA'

n_cantidad=cantidad.to_i
n_pu=pu.to_i

n_subtotal=multiplicar(n_cantidad,n_pu)
n_impuesto=aplicar_impuesto(n_subtotal,estado)
n_total=n_subtotal+n_impuesto

puts "# #{n_cantidad} * $#{n_pu} = $#{n_subtotal}"
puts "#{estado}(%10.0) = $#{n_impuesto}"
puts "Total = $#{n_total}"