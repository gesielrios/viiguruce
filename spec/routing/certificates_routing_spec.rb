require "spec_helper"

describe CertificatesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/certificates" }.should route_to(:controller => "certificates", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/certificates/new" }.should route_to(:controller => "certificates", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/certificates/1" }.should route_to(:controller => "certificates", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/certificates/1/edit" }.should route_to(:controller => "certificates", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/certificates" }.should route_to(:controller => "certificates", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/certificates/1" }.should route_to(:controller => "certificates", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/certificates/1" }.should route_to(:controller => "certificates", :action => "destroy", :id => "1")
    end

  end
end
