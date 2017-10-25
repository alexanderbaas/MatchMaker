class Api::AdminsController < ApplicationController

  def index
    render status: 200, json: {
      admins: User.admin? 
    }.to_json
  end
end
