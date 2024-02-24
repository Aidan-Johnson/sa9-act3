require 'vend'

RSpec.describe VendingMachine do
  describe "#purchase" do
    it "subtracts bottles from the total amount of bottles" do
        vendor1 = VendingMachine.new
        expect(vendor1.purchase(1)).to eq(19)
    end
  end
  describe "#restock" do
    it "restocks bottles to add to the total amount of bottles" do
        vendor2 = VendingMachine.new
        expect(vendor2.restock(1)).to eq(21)
    end
  end

  describe "#get_inventory" do
    it "returns total amount of bottles in the inventory" do
        vendor3 = VendingMachine.new
        expect(vendor3.get_inventory).to eq(20)
    end
  end

  describe "#report" do
    it "displays total amount of bottles in the inventory" do
        vendor4 = VendingMachine.new
        expect{vendor4.report}.to output("Inventory: 20 bottles\n").to_stdout
    end
  end


end
