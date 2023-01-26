require_relative "../lion.rb"

#TODO: write a test for talk method
describe Lion do
  describe "#talk" do
    it "returns a sentence stating the lion is roaring" do
      simba = Lion.new("Simba")
      expect(simba.talk).to eq("Simba roars")
    end
  end
end
