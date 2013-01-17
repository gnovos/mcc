module ApplicationHelper

  def toggle_edit_link
    link_to_function "Toggle Editor",
                     "document.cookie='editing=#{is_editing? ? 'false' : 'true'}';top.location.href=top.location.href"
  end

  def edit_region(name, type="full", &block)
    content_tag(:div,
                page_content(name) || (block ? capture(&block) : ""),
                id: "content:#{name}",
                class: 'mercury-region',
                data: { mercury: type,
                        :context => page_context
                })
  end

  def rich(name, &block)
    edit_region(name, 'full', &block)
  end

  def plain(name, &block)
    edit_region(name, 'simple', &block)
  end

  def markdown(name, &block)
    edit_region(name, 'markdown', &block)
  end

  def snippet(name, &block)
    edit_region(name, 'snippets', &block)
  end

  def image(name, &block)
    edit_region(name, 'image', &block)
  end

end
