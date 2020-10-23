def multiplicar(n_cantidad,n_pu)
    n_cantidad * n_pu
end

def aplicar_impuesto(n_subtotal,estado)
    case estado
    when "UT"
        n_subtotal*0.0685
    when "NV"
        n_subtotal*0.08
    when "TX"
        n_subtotal*0.0625
    when "AL"
        n_subtotal*0.04
    when "CA"
        n_subtotal*0.0825
    else
        n_subtotal*0.1
    end
end

def obtener_descuento(n_subtotal)
    if n_subtotal>50000
        n_subtotal*0.05
    else
        n_subtotal*0.05
    end
end

cantidad= ARGV[0]
pu= ARGV[1]
estado= ARGV[2]

n_cantidad=cantidad.to_i
n_pu=pu.to_i

n_subtotal=multiplicar(n_cantidad,n_pu)
n_impuesto=aplicar_impuesto(n_subtotal,estado)
n_descuento=obtener_descuento(n_subtotal)
n_total=n_subtotal+n_impuesto-n_descuento

puts "# #{n_cantidad} * $#{n_pu} = $#{n_subtotal}"
puts "#{estado}(%10.0) = $#{n_impuesto}"
puts "DTO(%5.0) = $#{n_descuento}"
puts "Total = $#{n_total}"