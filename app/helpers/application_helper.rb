module ApplicationHelper
  
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "ConstructUX, mercado de ofertas, materiales y productos de la construcción."
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
