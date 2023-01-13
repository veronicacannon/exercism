class BoutiqueInventory
  attr_reader :items

  require 'ostruct'

  def initialize(items)
    @items = items.map { |item| OpenStruct.new(item) }
  end

  def item_names
    items.map(&:name).sort
  end

  def total_stock
    items.inject(0) { |product, item| product += item.quantity_by_size.values.sum }
  end
end
