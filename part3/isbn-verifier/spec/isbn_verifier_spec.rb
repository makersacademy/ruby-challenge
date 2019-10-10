require "isbn_verifier"
describe "ISBN-10 Verifier" do
    it "Returns true if the string is an ISBN-10 format" do
        expect(isbnVerify("3-598-21508-8")).to eq true
    end
    it "Returns false if the string is not an ISBN-10 format" do
        expect(isbnVerify("3-123-2")).to eq false
    end
    it "Returns true if the string is an ISBN-10 format and contains 'X'" do
        expect(isbnVerify("3-598-21507-X")).to eq true
    end
end