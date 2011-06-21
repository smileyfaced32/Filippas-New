Gretel::Crumbs.layout do
  
  crumb :root do
    link "Home", root_path
  end
  
  crumb :breadcrumbs do
    link " | #{@pagetitle}", @breadcrumbstring_path
    parent :menu
  end 
  
  crumb :restaurant do
    link "Restaurant", restaurant_path
  end
  
  crumb :catering do
    link "Catering", catering_path
  end

  crumb :menu do
    link "Menu", menu_path
  end
  
  crumb :restaurant_menu do
    link "Restaurant Menu", restaurant_menu_path
    parent :menu
  end
  
  crumb :banquets_menu do
    link "Banquets Menu", banquets_menu_path
    parent :menu
  end
  
  crumb :catering_menu do
    link "Catering Menu", catering_menu_path
    parent :menu
  end
  
end