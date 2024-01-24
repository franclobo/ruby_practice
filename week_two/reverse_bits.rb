# Reverse bits of a given 32 bits unsigned integer.

def reverse_bits(n)
  result = 0
  32.times do
    result <<= 1
    result |= n & 1
    n >>= 1
  end
  result

end

=begin
Se define la función reverse_bits que toma un parámetro n.

Se inicializa una variable result a 0. Esta variable se utilizará para
almacenar el resultado final después de invertir los bits.

Luego, se utiliza un bucle times que se ejecuta 32 veces.
Este bucle recorre cada bit del número de entrada n.

Dentro del bucle, se realiza la siguiente secuencia de operaciones:

a. result <<= 1: Desplaza los bits de result a la izquierda (equivalente a multiplicar por 2).

b. result |= n & 1: Realiza una operación OR a nivel de bits entre result y el bit
menos significativo de n. Esto establece el bit menos significativo de result en el mismo
valor que el bit menos significativo de n.

c. n >>= 1: Desplaza los bits de n a la derecha (equivalente a dividir por 2).

Después de que el bucle se completa (32 iteraciones), la variable result contiene el número
con los bits invertidos.

Finalmente, se devuelve el valor de result.
=end
