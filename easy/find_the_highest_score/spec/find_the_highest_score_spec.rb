require "spec_helper"
require "find_the_highest_score"
describe FindTheHighestScore do
  before :each do
    @scores = [
      FindTheHighestScore.create("72 64 150 | 100 18 33 | 13 250 -6"),
      FindTheHighestScore.create("10 25 -30 44 | 5 16 70 8 | 13 1 31 12"),
      FindTheHighestScore.create("100 6 300 20 10 | 5 200 6 9 500 | 1 10 3 400 143")
    ]
  end

  it "should be equal to 100 250 150" do
    @scores[0].find.should == "100 250 150"
  end

  it "should be equal to 13 25 70 44" do
    @scores[1].find.should == "13 25 70 44"
  end

  it "should be equal to 100 200 300 400 500" do
    @scores[2].find.should == "100 200 300 400 500"
  end

end
