# my_middleware.rb
module My404
  class Hello
    def initialize(app)
      @app = app
    end

    def call(env)
      if env['PATH_INFO'] == '/'
        [200, {"Content-Type" => "text/plain"}, ["Everything looks A-OK here!!"]]
      else
        # foward the request
        [200, {"Content-Type" => "text/plain"}, ["Error 404. Page not found."]]
      end
    end
  end
end
