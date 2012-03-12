module ApplicationHelper
  # Returns the full title on a per-page basis.
    def full_title(page_title)
      base_title = "Pause|Break"
      if page_title.empty?
        base_title
      else
        "#{base_title} - #{page_title}"
      end
    end
    
  def nav_link(text, link)
      recognized = Rails.application.routes.recognize_path(link)
      if recognized[:controller] == params[:controller] && recognized[:action] == params[:action]
          content_tag(:li, :class => "active") do
              link_to( text, link)
          end
      else
          content_tag(:li) do
              link_to( text, link)
          end
      end
  end
end
