require './bill'

describe "bill" do
    it "add 2 items to bill should be able to list 2 items" do
        bill = Bill.new()
	first_item = Item.new(name="cola", total=20, unit=2, price_per_unit=10)
	second_item = Item.new(name="cocoa", total=15, unit=3, price_per_unit=5)
	expect(bill.item_list).to eq []

	bill.add_item(first_item)
	bill.add_item(second_item)
	expect(bill.item_list).to eq [ first_item, second_item ]
    end
    it "add 4 items to bill should be able to list 4 items" do
        bill = Bill.new()
		first_item = Item.new(name="cola", total=20, unit=2, price_per_unit=10)
		second_item = Item.new(name="cocoa", total=15, unit=3, price_per_unit=5)
		third_item = Item.new(name="sprite", total=15, unit=3, price_per_unit=5)
		fourth_item = Item.new(name="orange juice", total=15, unit=3, price_per_unit=5)
		expect(bill.item_list).to eq []

	bill.add_item(first_item)
	bill.add_item(second_item)
	bill.add_item(third_item)
	bill.add_item(fourth_item)
	expect(bill.item_list.length).to eq 4
	expect(bill.item_list).to eq [ first_item, second_item, third_item, fourth_item ]
	expect(bill.item_list[2].name).to eq "sprite"
    end
    it "bill have 3 items should sum bill total" do
		bill = Bill.new()
		first_item = Item.new(name="cola", total=nil, unit=2, price_per_unit=10)
		second_item = Item.new(name="cocoa", total=nil, unit=3, price_per_unit=5)
		third_item = Item.new(name="sprite", total=nil, unit=1, price_per_unit=5)

		bill.add_item(first_item)
		bill.add_item(second_item)
		bill.add_item(third_item)

		expect(bill.item_list.length).to eq 3
		expect(bill.bill_total).to eq 40
    end

end
