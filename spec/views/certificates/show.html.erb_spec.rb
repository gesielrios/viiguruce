require 'spec_helper'

describe "certificates/show.html.erb" do
  before(:each) do
    @certificate = assign(:certificate, stub_model(Certificate,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
