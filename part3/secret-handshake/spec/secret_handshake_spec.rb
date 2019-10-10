require 'rspec'

class SecretHandshake
  attr_reader :binaryNum

  ReverseFlag = 16
  CommandList = ["wink", "double blink", "close your eyes", "jump"]

  def initialize(binary_string)
    @binaryNum = binary_string.to_i(2)
  end

  def command_list
    CommandList
  end

  def reverse_flag
    ReverseFlag
  end

  def commands
    handshake = build_handshake(binaryNum, command_list)

    if reverse?
      handshake.reverse
    else
      handshake
    end
  end

  def reverse?
    (binaryNum & reverse_flag) != 0
  end

  def build_handshake(binaryNum, command_list)
    command_list.select.with_index do |command, i|
      (binaryNum & (1 << i)) != 0
    end
  end
end

def function(n)
    handshake = SecretHandshake.new(n)
    p handshake.commands
end

function("1")

describe 'SecretHandshake' do 
  it "should know how to wink with a 1" do
    handshake = SecretHandshake.new("1")
    handshake.commands.should eq(["wink"])
  end    

  it "should know how to double blink with a 10" do
    handshake = SecretHandshake.new("10")
    handshake.commands.should eq(["double blink"])
  end

  it 'should know how to close your eyes with 100' do
    handshake = SecretHandshake.new("100")
    handshake.commands.should eq(["close your eyes"])
  end

  it 'should know to jump with 1000' do
    handshake = SecretHandshake.new("1000")
    handshake.commands.should eq(["jump"])
  end

  it 'should know to wink double blink with 11' do
    handshake = SecretHandshake.new("11")
    handshake.commands.should eq(["wink","double blink"]) 
  end

  it 'should know to double blink, wink, with 10011' do
    handshake = SecretHandshake.new("10011")
    handshake.commands.should eq(["double blink","wink"])
  end

  it 'should get this complicated handshake correctly' do
    handshake = SecretHandshake.new("11111")
    handshake.commands.should eq(["jump","close your eyes","double blink","wink"])
  end

  it 'should not respond to an invalid code' do
    handshake = SecretHandshake.new("binary")
    handshake.commands.should eq([])
  end
end