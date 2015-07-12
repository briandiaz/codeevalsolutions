require 'spec_helper'
require 'delta_time'

describe DeltaTime do
  before :each do
    @times = [
      DeltaTime.new('14:01:57','12:47:11'),
      DeltaTime.new('13:09:42','22:16:15'),
      DeltaTime.new('08:08:06','08:38:28'),
      DeltaTime.new('23:35:07','02:49:59'),
      DeltaTime.new('14:31:45','14:46:56'),
    ]

  end

  it "should return 01:14:46" do
    @times[0].get_delta.should eq('01:14:46')
  end

  it "should return 09:06:33" do
    @times[1].get_delta.should eq('09:06:33')
  end

  it "should return 00:30:22" do
    @times[2].get_delta.should eq('00:30:22')
  end

  it "should return 20:45:08" do
    @times[3].get_delta.should eq('20:45:08')
  end

  it "should return 00:15:11" do
    @times[4].get_delta.should eq('00:15:11')
  end
end
