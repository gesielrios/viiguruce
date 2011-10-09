require 'spec_helper'

describe "certificates/index.html.erb" do
  before(:each) do
    assign(:certificates, [
      stub_model(Certificate,
        :name => "Name"
      ),
      stub_model(Certificate,
        :name => "Name"
      )
    ])
  end

  it "renders a list of certificates" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
