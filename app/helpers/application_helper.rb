module ApplicationHelper
  # Return a title on a per-page basis.
  def title
    base_title = "Filippas"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  def pagetitle
    base_title = "#{@title}"
  end
  
  def mark_required(object, attribute)
    "*" if object.class.validators_on(attribute).map(&:class).include? ActiveModel::Validations::PresenceValidator
  end
end
