require_relative "../animal.rb"

describe Animal do
  #TODO: write a test for #initialize Method
  describe "#initialize" do
    it "creates an instance of Animal" do
      mouse = Animal.new("Jerry")
      expect(mouse).to be_an(Animal)
    end
  end

  #TODO: write a test for #name method
  describe "#name" do 
    it "returns the name of the animal" do
      nala = Animal.new("Nala")
      expect(nala.name).to eq("Nala")
    end
  end
  
  #TODO: write a test for ::phyla method
  describe "::phyla" do
    it "returns the 4 phyla of the animal kingdom" do
      phyla = Animal.phyla
      expect(phyla.size).to eq(4)
    end
  end

end


