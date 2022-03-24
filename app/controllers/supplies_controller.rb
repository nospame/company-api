class SuppliesController < ApplicationController
  def index
    # supplies = Supply.all
    # render json: supplies.as_json
    render json: {message: "in the supplies index"}
  end
end
