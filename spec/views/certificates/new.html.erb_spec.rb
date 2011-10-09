require 'spec_helper'

describe "certificates/new.html.erb" do
  before(:each) do
    assign(:certificate, stub_model(Certificate,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new certificate form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => certificates_path, :method => "post" do
      assert_select "input#certificate_name", :name => "certificate[name]"
    end
  end
end
