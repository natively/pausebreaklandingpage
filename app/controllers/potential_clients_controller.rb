class PotentialClientsController < ApplicationController
  def create
    @potential_client = PotentialClient.new( params[ :potential_client ] )
    if @potential_client.save
      redirect_to thank_you_path
    else
      redirect_to contact_path
    end
  end
end