class Product
  @@item_list = []
  @@total_amount = 0
  SALES_TAX = 10/100.0
  IMPORT_TAX = 5/100.0
  attr_accessor :name, :imported, :exemption, :price
  def initialize
      yield self
  end
  def add_item(tax)
      @@item_list += [[@name.chop,tax,@price,@mrp]]
      @@total_amount += @mrp
  end
  def tax_calculation
      @price = @price.to_f
      @mrp = @price
      tax = 0
      @imported = @imported.chop.gsub(/^y(es)?/i, 'yes')
      @exemption = @exemption.chop.gsub(/^n(o)?/i, 'no')
      tax += import_tax if(@imported == 'yes')
      tax += sales_tax if(@exemption == 'no')
      @mrp += tax
      add_item(tax)
  end
  def import_tax
      @price*(SALES_TAX)
  end
  def sales_tax
      @price*(IMPORT_TAX)
  end
  def self.display
      puts "__________________________________________________________________________________________________"
      puts ""
      puts "      Item_Name                 Price                     Tax                       MRP"
      
      @@item_list.each_with_index do |item, index|
          print "#{(index+1).to_s.ljust(5)} #{item[0].ljust(25)} #{item[2].to_s.ljust(25)} #{item[1].round(2).to_s.ljust(25)} #{item[3].to_s.ljust(25)}\n"
      end
      puts "___________________________________________________________________________________________________"
      puts ""
      puts "Total Amount - #{@@total_amount.round(0)}".rjust(61)
      puts "\n"
  end
end