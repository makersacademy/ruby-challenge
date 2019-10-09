describe "verification of ISBN-10" do

  context "invalid ISBN-10 string" do
    it "returns false given string with too many numbers" do
      expect(valid_isbn?("3-598-21509-89")).to eq false
    end
    it "returns false given string with too few numbers" do
      expect(valid_isbn?("3-98-9")).to eq false
    end
    it "returns false given string containing invalid characters" do
      expect(valid_isbn?("3#59821509#8")).to eq false
    end
  end
  context "valid ISBN-10 string" do
    it "returns true given a valid ISBN-10 string" do
      expect(valid_isbn?("3-598-21509-8")).to eq true
    end
  end

end