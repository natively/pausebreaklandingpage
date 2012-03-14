class StaticPagesController < ApplicationController
  def contact
    @potential_client = PotentialClient.new
  end
end
