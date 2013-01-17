class ContentController < ApplicationController

  def save
    ap params:params

    content = params[:content]
    content.each do |name, data|
      name = name[/^page-region-(.*)$/, 1]
      context = data['data']['page-context']
      value = data['value']
      #snippets = data['snippets']
      #attrs = data['attributes']

      content = Content.create!(name:name, context:context, content:value)

      ap name:name,
         context:context,
         value:value
    end

    render text: ""
  end

end
