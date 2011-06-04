require 'spec_helper'

describe MenuController do

  describe "GET 'menu'" do
    it "should be successful" do
      get 'menu'
      response.should be_success
    end
  end

  describe "GET '_menuheader'" do
    it "should be successful" do
      get '_menuheader'
      response.should be_success
    end
  end

  describe "GET 'catering_menu'" do
    it "should be successful" do
      get 'catering_menu'
      response.should be_success
    end
  end

  describe "GET 'restaurant_menu'" do
    it "should be successful" do
      get 'restaurant_menu'
      response.should be_success
    end
  end

  describe "GET 'banquets_menu'" do
    it "should be successful" do
      get 'banquets_menu'
      response.should be_success
    end
  end

end
