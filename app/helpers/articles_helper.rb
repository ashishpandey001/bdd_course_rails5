module ArticlesHelper
  def list_articles
    if @articles.empty?
      content_tag(:h1, 'No Articles Created', id: 'no-articles')
    else
      render @articles
    end
  end
end
