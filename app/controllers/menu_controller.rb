class MenuController < ApplicationController
  def menu
    render :template => "menu"
  end

  def _menuheader
  end

  def _menufooter
  end

  def index
    @title = "Menu"
  end
  
  def catering_menu
    @title = "Catering Menu"
  end

  def restaurant_menu
    @title = "Restaurant Menu"
  end

  def banquets_menu
    @title = "Banquets Menu"
  end

end
