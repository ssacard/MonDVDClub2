module Poirot
  class Handler < ActionView::Template::Handler
    include ActionView::Template::Handlers::Compilable

    self.default_format = :mustache

    def compile(template)
      view_path = "#{template.virtual_path}"
      abs_view_path = Rails.root.join('app/views', view_path)
      view_class = begin
        view_path.classify.constantize
      rescue NameError => e
        Poirot::View
      end

      view_class.send( :template_path=, File.expand_path( File.join( "app", "templates", template.virtual_path, '..' ) ) )
      "#{view_class}.new(self, '#{template.source.gsub(/'/, "\\\\'")}').render.html_safe"
    end
  end
end
