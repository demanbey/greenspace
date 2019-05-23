class ApplicationController < ActionController::Base
  before_action :determine_nav_floating
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :photo])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :description, :photo])
  end

  def determine_nav_floating
    if (controller_name == 'pages' && action_name == 'home') || (controller_name == 'gardens' && action_name == 'show')
      @nav_floating = true
    else
      @nav_floating = false
    end
  end

end
