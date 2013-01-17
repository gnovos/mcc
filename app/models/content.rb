class Content < ActiveRecord::Base
  attr_accessible :name, :context, :content

  def to_s
    content.html_safe
  end
end
