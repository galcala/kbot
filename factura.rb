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

def obtener_descuento(n_subtotal)
    if n_subtotal>50000
        @porc_descuento=15
    elsif n_subtotal>10000
        @porc_descuento=10
    elsif n_subtotal>7000
        @porc_descuento=7
    elsif n_subtotal>5000
        @porc_descuento=5
    elsif n_subtotal>1000
        @porc_descuento=3
    else
        @porc_descuento=0
    end
end

def aplicar_porcentaje(n_subtotal,porcentaje)
    n_subtotal*porcentaje/100
end

#Captura datos
cantidad= ARGV[0]
pu= ARGV[1]
estado= ARGV[2]

n_cantidad=cantidad.to_i
n_pu=pu.to_i

#Calcula subtotal
n_subtotal=multiplicar(n_cantidad,n_pu)
#Calcula impuestos
porc_impuesto=obtener_impuesto(estado)
n_impuesto=aplicar_porcentaje(n_subtotal,porc_impuesto)
#Calcula descuentos
porc_descuento=obtener_descuento(n_subtotal)
n_descuento=aplicar_porcentaje(n_subtotal,porc_descuento)
#Calcula total
n_total=n_subtotal+n_impuesto-n_descuento

#Imprime en formato
puts "# #{n_cantidad} * $#{n_pu} = $#{n_subtotal}"
puts "#{estado}(%#{porc_impuesto}) = $#{n_impuesto}"
puts "DTO(%5.0) = $#{n_descuento}"
puts "Total = $#{n_total}"