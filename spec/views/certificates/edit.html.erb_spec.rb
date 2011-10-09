require 'spec_helper'

describe "certificates/edit.html.erb" do
  before(:each) do
    @certificate = assign(:certificate, stub_model(Certificate,
      :name => "MyString"
    ))
  end

  it "renders the edit certificate form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => certificates_path(@certificate), :method => "post" do
      assert_select "input#certificate_name", :name => "certificate[name]"
    end
  end
end
