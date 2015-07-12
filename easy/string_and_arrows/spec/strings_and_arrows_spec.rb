require 'spec_helper'
require 'strings_and_arrows'

describe StringsAndArrows do
  before :each do
    @arrows = [
      StringsAndArrows.new('<--<<--<<'),
      StringsAndArrows.new('<<>>--><--<<--<<>>>--><'),
      StringsAndArrows.new('<-->>'),
      StringsAndArrows.new('-<--<<>--<>>-->>--<>>>><<--<--<<--<--<<>>>>--><<<>--<<>>-->>>'),
      StringsAndArrows.new('-->-<<<<>>-->-->>')
    ]
  end

  it "should have 2 arrows" do
    @arrows[0].count_arrows.should == 2
  end

  it "should have 4 arrows" do
    @arrows[1].count_arrows.should == 4
  end

  it "should have 0 arrows" do
    @arrows[2].count_arrows.should == 0
  end

  it "should have 6 arrows" do
    @arrows[3].count_arrows.should == 6
  end

  it "should have 1 arrow" do
    @arrows[4].count_arrows.should == 1
  end
end
