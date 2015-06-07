require 'spec_helper'
require 'swap_numbers'

describe SwapNumbers do
	let(:data) { "4Always0 5look8 4on9 7the2 4bright8 9side7 3of8 5life5" }
	subject(:swap) { SwapNumbers.new(data) }

	context "#parse_data" do 
		it { subject.parse_data.should eq(["4Always0","5look8","4on9","7the2","4bright8","9side7","3of8","5life5"]) }
		context "#swap_numbers" do
			it { subject.swap_numbers.should eq("0Always4 8look5 9on4 2the7 8bright4 7side9 8of3 5life5") }
		end
	end
	
end