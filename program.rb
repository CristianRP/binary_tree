#!/usr/bin/ruby

require './tree.rb'

puts 'Árbol binario :D'

selection = 99
tree = Tree.new

until selection.to_i == 0 do
  puts 'Seleccione la opción que desea realizar'
  puts '1) Ingresar valores'
  puts '2) Recorrido enorden'
  puts '3) Recorrido postorden'
  puts '0) Salir'
  selection = gets
  case selection.to_i
  when 1 then
    puts 'Ingresa un número:'
    value = gets
    tree.recursive_add(tree.root, value.to_i)
  when 2 then
    tree.inorder(tree.root)
  when 3 then
    tree.postorder(tree.root)
  else
    puts '****No es una opción valida****' unless selection.to_i == 0
  end
end

puts 'Hasta luego!'


