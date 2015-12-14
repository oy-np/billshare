require "./item"

describe "item" do
	it "given price_total and unit should have item with given datas" do
		item = Item.new(name="cola", total=20, unit=2, price_per_unit=10)
		expect(item.name).to eq "cola"
		expect(item.total).to eq 20
		expect(item.unit).to eq 2
		expect(item.price_per_unit).to eq 10
	end
	it "given price_total and unit should return price per unit" do
		item = Item.new(name="cola", total=20, unit=2, price_per_unit=nil)
		expect(item.name).to eq "cola"
		expect(item.total).to eq 20
		expect(item.unit).to eq 2
		expect(item.price_per_unit).to eq nil
		item.calculate()
		expect(item.price_per_unit).to eq 10
	end
	it "given price_per_unit and unit should return total" do
		item = Item.new(name="cola", total=nil, unit=2, price_per_unit=10)
		expect(item.name).to eq "cola"
		expect(item.total).to eq nil
		expect(item.unit).to eq 2
		expect(item.price_per_unit).to eq 10
		item.calculate()
		expect(item.total).to eq 20
	end
	it "given total and price_per_unit should return unit" do
		item = Item.new(name="cola", total=20, unit=nil, price_per_unit=10)
		expect(item.name).to eq "cola"
		expect(item.total).to eq 20
		expect(item.unit).to eq nil
		expect(item.price_per_unit).to eq 10
		item.calculate()
		expect(item.unit).to eq 2
	end
end
