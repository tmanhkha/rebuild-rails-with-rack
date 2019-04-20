module Frack
  class BaseController
    attr_reader :env

    def initialize(env)
      @env = env
    end
    def render(view)
      render_template(layout) do
        render_template(view)
      end
    end

    def render_template(path, &block)
      Tilt.new(file(path)).render(self, &block)
    end

    def file(path)
      Dir[File.join('app', 'views', "#{path}.html.*")].first
    end

    def layout
      File.join('layouts', 'application')
    end
  end
end