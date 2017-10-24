class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def after_sign_in_path_for(current_user)
    # http://www.rubydoc.info/github/plataformatec/devise/Devise/Controllers/Helpers:after_sign_in_path_for
    if current_user.admin?
        admin_path(current_user)
    else
        student_path(current_user)
    end
  end
end
# error: https://www.thoughtco.com/nameerror-uninitialized-2907928
# https://github.com/bitmakerlabs/debugging-guide/wiki/Rails-error:-Routing-Error:-uninitialized-constant
