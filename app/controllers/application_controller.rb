class ApplicationController < ActionController::Base
  protect_from_forgery
  include Mercury::Authentication

  layout :layout_with_mercury

  helper_method :is_editing?, :page_context, :page_content

  def layout_with_mercury
    !params[:mercury_frame] && is_editing? ? 'mercury' : 'application'
  end

  def is_editing?
    cookies[:editing] == 'true' && can_edit?
  end

  def page_context(context = nil)
    @page_contexts ||= [params[:controller]]
    @page_contexts << context if context
    @page_contexts.last
  end

  def page_content(name, context = page_context, version = nil)
    where = {name:name, context:context}
    where[:version] = version if version
    Content.where(where).order(:updated_at).last.try?.render(is_editing?)
  end

end
