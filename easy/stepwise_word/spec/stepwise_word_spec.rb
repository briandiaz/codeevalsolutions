require 'spec_helper'
require 'stepwise_word'

data_1 = "cat dog hello".split(" ")
data_2 = "stop football play".split(" ")
data_3 = "music is my life".split(" ")

describe StepWiseWord do
	
	before :each do
		@words_1 = StepWiseWord.new(data_1)
		@words_2 = StepWiseWord.new(data_2)
		@words_3 = StepWiseWord.new(data_3)
	end

	context "object instance" do 
		describe "first example" do
			it "should receive an array of words" do
				@words_1.should_not be_nil
			end	
			it "should have stored words" do
				@words_1.words.should_not be_empty
			end
		end
		describe "second example" do
			it "should receive an array of words" do
				@words_2.should_not be_nil
			end	
			it "should have stored words" do
				@words_2.words.should_not be_empty
			end
		end
		describe "third example" do
			it "should receive an array of words" do
				@words_3.should_not be_nil
			end	
			it "should have stored words" do
				@words_3.words.should_not be_empty
			end
		end
	end

	context "max lenght word" do 
		describe "first example" do
			it "should return the max length word" do
				@words_1.find_longest_word.should == "hello"
			end	
		end
		describe "second example" do
			it "should return the max length word" do
				@words_2.find_longest_word.should == "football"
			end	
		end
		describe "third example" do
			it "should return the max length word" do
				@words_3.find_longest_word.should == "music"
			end	
		end
	end

	context "stepwised word" do 
		describe "first example" do
			it "should return stepwised word" do
				@words_1.stepwise.should == "h *e **l ***l ****o"
			end	
		end
		describe "second example" do
			it "should return stepwised word" do
				@words_2.stepwise.should == "f *o **o ***t ****b *****a ******l *******l"
			end	
		end
		describe "third example" do
			it "should return stepwised word" do
				@words_3.stepwise.should == "m *u **s ***i ****c"
			end	
		end
	end

end