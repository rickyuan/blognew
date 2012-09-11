module ApplicationHelper
  def markdown(text)
    markdown_render = Redcarpet::Render::HTML.new(:hard_wrap => true, :no_styles => true)
    markdown = Redcarpet::Markdown.new(markdown_render, :autolink => true, :no_intro_emphasis => true)
    markdown.render(text.to_s).html_safe
  end
end
