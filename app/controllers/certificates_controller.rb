#coding: utf-8
class CertificatesController < ApplicationController
  
  def create
		render :text => Certificate.generate(params[:certificate][:name]).render, :content_type => 'application/pdf'
  end
end
