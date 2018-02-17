class Api::FlowsController < ApplicationController

  def index
    @flows = Flow.all
  end

  def create
    @flow = Flow.new(flow_params)
    
    if @flow.save
      render :show
    else
      render json: @flow.errors.full_messages, status: 422
    end
  end

  private

  def flow_params
    flow = {
      :name => params[:name]
    }
  end
end
