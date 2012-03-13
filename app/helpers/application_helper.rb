module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "pause|break"
    if page_title.empty?
      base_title
    else
      "#{base_title} - #{page_title}"
    end
  end

  # Returns a <li> tag with a nav link inside.
  # and an "active" class if it matches the
  # current controller#action supplied.
  def nav_link(text, link)
    recognized = Rails.application.routes.recognize_path(link)
    if recognized[:controller] == params[:controller] && recognized[:action] == params[:action]
        content_tag(:li, :class => "active") { link_to( text, link ) }
    else
        content_tag(:li) { link_to( text, link ) }
    end
  end
end
