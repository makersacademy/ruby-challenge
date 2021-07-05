require 'Handshake'

describe 'Handshake' do 

  expected_values = {
    1=> ["wink"],
    2=> ["double blink"],
    3=> ["wink","double blink"],
    4=> ["close your eyes"],
    5=> ["wink","close your eyes"],
    6=> ["double blink", "close your eyes"],
    7=> ["wink", "double blink", "close your eyes"],
    8=> ["jump"],
    9=> ["wink", "jump"],
    10=>["double blink", "jump"],
    11=>["wink", "double blink", "jump"],
    12=>["close your eyes", "jump"],
    13=>["wink", "close your eyes", "jump"],
    14=>["double blink", "close your eyes", "jump"],
    15=>["wink", "double blink", "close your eyes", "jump"],
    16=>[],
    #should reverse tests 1-15
    17=>["wink"],
    18=>["double blink"],
    19=>["double blink", "wink"],
    20=>["close your eyes"],
    21=>["close your eyes", "wink"],
    22=>["close your eyes", "double blink"],
    23=>["close your eyes", "double blink", "wink"],
    24=>["jump"],
    25=>["jump", "wink"],
    26=>["jump", "double blink"],
    27=>["jump", "double blink", "wink"],
    28=>["jump", "close your eyes"],
    29=>["jump", "close your eyes", "wink"],
    30=>["jump", "close your eyes", "double blink"],
    31=>["jump", "close your eyes", "double blink", "wink"],
    32=>[]
    #back to original order
  }
  expected_values.each do 
    |val, expected| 
    it "passes when #{val} equals #{expected}" do 
        handshake = SecretHandshake.new(val)
        expect(handshake.get).to eq(expected)
    end
  end

    it 'should know how to reverse 23 (39)' do
      handshake = SecretHandshake.new(39)
      expect(handshake.get).to eq(["wink", "double blink", "close your eyes"])
    end 

    it 'should know how to 41' do
      handshake = SecretHandshake.new(41)
      expect(handshake.get).to eq(["wink", "jump"])
    end 

  end

  