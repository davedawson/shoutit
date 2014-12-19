module ApplicationHelper
  # Returns the full title on a per-page basis.       # Documentation comment
  def full_title(page_title)                          # Method definition
    base_title = "Shout Club"  # Variable assignment
    if page_title.empty?                              # Boolean test
      base_title                                      # Implicit return
    else
      "#{base_title} | #{page_title}"                 # String interpolation
    end
  end
  def body_id(page_id)
      "#{page_id}"
  end

  def body_class(page_class)
      "#{page_class}"
  end
end
