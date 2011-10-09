require 'spec_helper'

describe Certificate do
	it "includes participant name" do
		@participant_name = "Gesiel Rios"
		@certificate = Certificate.generate @participant_name
		array_texts = PDF::Inspector::Text.analyze(@certificate.render).strings
		array_texts.include?(@participant_name).should be_true
	end
end
