MarkdownRails.configure do |config|
  config.render do |markdown_source|
    RUBYCONF.markdown.render(markdown_source)
  end
end