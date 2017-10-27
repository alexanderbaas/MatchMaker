class Api::StudentssController < ApplicationController
  def index
    render status: 200, json: {
      students: User.admin = false
    }.to_json
  end
end
