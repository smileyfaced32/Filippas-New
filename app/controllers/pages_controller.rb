class PagesController < ApplicationController
 
  def home
    @users = User.all
    @title = "Home"
    render :layout => "slide"
  end

  def about
    @title = "About"
  end

  def contact
    @title = "Contact"
  end

  def blog
    @title = "Blog"
  end

  def privacy
    @title = "Privacy"
  end

  def restaurant
    @title = "Restaurant"
  end

  def banquets
    @title = "Banquets"
  end

  def catering
    @title = "Catering"
  end

  def events
    @title = "Events"
  end
  
  def help
    @title = "Help"
  end
  
  def hours
    @title = "Hours"
  end
  
  def carryout
    @title = "Carry Out"
  end
  
  def gallery
    @title = "Gallery"
  end
  
  def charities
    @title = "Charities"
  end
  
  def aboutthechef
    @title = "About The Chef"
  end
  
end
