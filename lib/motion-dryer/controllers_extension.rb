# add controllers

module Motion; module Project
  class Config
    variable :controllers

    def add_dependency(app)     
      @controllers ||= []
      @controllers = [@controllers] unless @controllers.is_a?(Array)
      common_views   = Dir.glob("app/views/common/*.rb")
      common_helpers = Dir.glob("app/helpers/application_helper.rb")
      @controllers.each do |controller|
        controller_file = Dir.glob("app/*/#{controller}_controller.rb").first
        helper_files = Dir.glob("app/helpers/#{controller}_helper.rb")
        views_files = Dir.glob("app/views/#{controller}/*.rb")
        app.file_dependencies controller_file => (common_helpers + common_views + helper_files + views_files)
      end
    end
  end

  class App
    class << self
      def setup_add_dependency(&block)
        config.add_dependency(self)
        setup_before_add_dependency(&block)
      end

      alias_method :setup_before_add_dependency, :setup
      alias_method :setup, :setup_add_dependency
    end
  end
end; end