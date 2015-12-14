require_relative 'item'

class Bill
    def initialize(item_list=[])
	@item_list = item_list
    end
    def item_list
        item_list = @item_list
    end
    def add_item(item)
        @item_list << item
    end
    def bill_total
        item_count = 0
        bill_total = 0
        item_total = @item_list.length 
	while item_count < item_total do
	     @item_list[item_count].calculate()
             bill_total += @item_list[item_count].total 
             item_count += 1
        end
        bill_total
    end
end

