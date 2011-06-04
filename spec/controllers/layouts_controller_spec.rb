require 'spec_helper'

describe LayoutsController do

  describe "GET '_footer'" do
    it "should be successful" do
      get '_footer'
      response.should be_success
    end
  end

  describe "GET '_header'" do
    it "should be successful" do
      get '_header'
      response.should be_success
    end
  end

  describe "GET '_stylesheets'" do
    it "should be successful" do
      get '_stylesheets'
      response.should be_success
    end
  end

end
