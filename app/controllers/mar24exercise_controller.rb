class Mar24exerciseController < ApplicationController
  def index
    things = Thing.new
    render json: things.as_json
  end
end
