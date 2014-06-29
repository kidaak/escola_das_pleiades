module ApplicationHelper
  def active_link_to(link_text, link_path)
    class_name = current_page?(link_path) ? 'active' : ''

    content_tag(:dd, :class => class_name) do
      link_to link_text, link_path
    end
  end
end
