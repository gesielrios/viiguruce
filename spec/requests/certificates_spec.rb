require 'spec_helper'

describe "Certificates" do
  describe "GET /certificates" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get certificates_path
      response.status.should be(200)
    end
  end
end
