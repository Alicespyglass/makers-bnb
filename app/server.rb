class MakersBnB < Sinatra::Base

  enable :sessions
  register Sinatra::Partial
  use Rack::MethodOverride
  enable :partial_underscores
  set :session_secret, 'super secret'
  set :partial_template_engine, :erb

  helpers do
    def current_user
      @current_user ||= User.get(session[:id])
    end
  end

end
