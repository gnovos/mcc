module ApplicationHelper

  def editable(name, type="full", &block)
    content_tag(:div, capture(&block), id: name, class: 'mercury-region', data: { mercury: type })
  end

  def rich(name, &block)
    editable(name, 'full', &block)
  end

  def plain(name, &block)
    editable(name, 'simple', &block)
  end

  def markdown(name, &block)
    editable(name, 'markdown', &block)
  end

  def snippet(name, &block)
    editable(name, 'snippets', &block)
  end

  def image(name, &block)
    editable(name, 'image', &block)
  end

end
