require 'spec_helper'
require 'lowest_unique_numbers'

describe LowestUniqueNumbers do
	let(:data) { "4 8 1 6 4 1 6 2 9 4 2 6 3 9 7 1 4 3 5 4" }
	subject(:lun) { LowestUniqueNumbers.new(data) }

	context "#lowest_unique_numbers" do 
		it { subject.lowest_unique_numbers.should == 19 }
	end
end