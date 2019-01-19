#!/bin/ruby

# A Shashank le gustan las cadenas donde los caracteres consecutivos son
# diferentes.  Por ejemplo, le gusta ABABA, mientras que ABAA no le gusta.
# Dada una cadena que solamente contiene caracteres A y B, él quiere cambiarla
# a una cadena que le guste. Para hacerlo, solo se le permite borrar los
# caracteres en la cadena.

# Tu tarea es encontrar la mínima cantidad requerida de borrados.

# Complete the alternatingCharacters function below.
def alternating_characters(s)
  count = 0
  array = s.split('')
  array.each_with_index do |item, i|
    count += 1 if item == array[i + 1]
  end

  count
end

q = gets.to_i

q.times do |q_itr|
    s = gets.to_s.rstrip

    result = alternating_characters s
    puts result
end

