class ContentController < ApplicationController

  def save
    ap params:params

    content = params[:content]
    content.each do |name, data|
      name = name[/^content:(.*)$/, 1]
      region = data['type']
      context = data['data']['context']
      value = data['value'] || data['attributes']['src']
      #snippets = data['snippets']

      version = data['data']['version']

      content = Content.create!(region:region, name:name, context:context, content:value)
    end

    render text: ""
  end

end
