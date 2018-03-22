module ApplicationHelper
  
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "ConstructUX, donde diseñar el presupuesto de tu reforma o construir tu vivienda a medida."
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
