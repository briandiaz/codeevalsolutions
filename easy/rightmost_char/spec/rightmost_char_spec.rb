require 'spec_helper'
require 'rightmost_char'

describe RightMostChar do
  before :each do
    @tests = [
      RightMostChar.new('Hello World','r'),
      RightMostChar.new('Hello CodeEval', 'E'),
      RightMostChar.new('How to learn to Cook', 'C'),
      RightMostChar.new('What is your name','m')
    ]
  end

  it "should return 8" do
    @tests[0].rightmost_char.should == 8
  end

  it "should return 10" do
    @tests[1].rightmost_char.should == 10
  end

  it "should return 16" do 
    @tests[2].rightmost_char.should == 16
  end

  it "should return 15" do
    @tests[3].rightmost_char.should == 15
  end
end
