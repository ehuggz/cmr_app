module ApplicationHelper
 # Return a title on a per-page basis.
  def logo
    image_tag("CMR.png", :alt => "Sample App", :class => "round")
  end

  def title
    base_title = "Construction Market Report Sample App"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

end
