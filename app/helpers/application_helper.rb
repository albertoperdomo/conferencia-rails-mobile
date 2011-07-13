module ApplicationHelper
  def header_and_title(content)
    set_title(content)
    header(content)
  end

  def header(content)
    "<div data-role='header'>
      #{link_to 'Home', "#main", "data-icon" => "home", "data-role" => "button"}
      <h1>#{content}</h1>
    </div>".html_safe
  end

  def set_title(content)
    content_for :title do
      content
    end
  end

end
