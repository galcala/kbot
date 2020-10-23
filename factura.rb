def multiplicar(n_cantidad,n_pu)
    n_cantidad * n_pu
end

def obtener_impuesto(estado)
    case estado
    when "UT" 
        @porc_impuesto=6.85
    when "NV" 
        @porc_impuesto=8
    when "TX" 
        @porc_impuesto=6.25
    when "AL" 
        @porc_impuesto=4
    when "CA" 
        @porc_impuesto=8.25
    else 
        @porc_impuesto=0
    end
end

def aplicar_impuesto(n_subtotal,porc_impuesto)
    n_subtotal*porc_impuesto/100
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
porc_impuesto=obtener_impuesto(estado)
n_impuesto=aplicar_impuesto(n_subtotal,porc_impuesto)
n_descuento=obtener_descuento(n_subtotal)
n_total=n_subtotal+n_impuesto-n_descuento

puts "# #{n_cantidad} * $#{n_pu} = $#{n_subtotal}"
puts "#{estado}(%#{porc_impuesto}) = $#{n_impuesto}"
puts "DTO(%5.0) = $#{n_descuento}"
puts "Total = $#{n_total}"