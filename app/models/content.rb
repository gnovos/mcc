class Content < ActiveRecord::Base
  attr_accessible :region, :name, :context, :content

  after_initialize :init_version

  def render(editing = false)
    case region
      when 'simple'
        content
      when 'markdown'
        editing ? content : RUBYCONF.markdown.render(content).html_safe
      else
        content.html_safe
    end
  end

  def init_version
    self.version ||= Time.now.to_f.to_s
  end
end
