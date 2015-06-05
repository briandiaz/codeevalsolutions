require 'spec_helper'
require 'string_mask'
describe StringMask do
	let(:data) { "rfstzaupyfppzu 00100011100101" }
	context "#parse_data" do
		let(:parsed_data) { StringMask.parse_data(data) }
		it { parsed_data.should eq(["rfstzaupyfppzu", "00100011100101"]) }

		context "#string_mask" do
			it { StringMask.string_mask(parsed_data[0], parsed_data[1]).should eq("rfStzaUPYfpPzU") }
		end
	end
end