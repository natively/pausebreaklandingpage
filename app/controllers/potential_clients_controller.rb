class PotentialClientsController < ApplicationController
  respond_to :json

  def create
    respond_with(PotentialClient.create( params[ :potential_client ] ).as_json,
      :location => 'nil')
  end
end
