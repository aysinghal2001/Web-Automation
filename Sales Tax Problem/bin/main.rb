require_relative '../lib/processing.rb'

input = 'y'
loop do
  item = Product.new do |element|
      print 'Name of the product: '
      element.name = gets
      print 'Imported?: '
      element.imported = gets
      print 'Exempted from sales tax? '
      element.exemption = gets
      print 'Price: '
      element.price = gets
  end
  item.tax_calculation
  print 'Do you want to add more items to your list(y/n): '
  input = gets.chomp
  input = input.gsub(/^n(o)?/i, 'no')
  break if (input == 'no')
end
print Product.display