class StaticPagesController < ApplicationController
  def home
  end

  def contact
    @potential_client = PotentialClient.new
  end
end
