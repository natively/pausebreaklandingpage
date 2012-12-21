class StaticPagesController < ApplicationController
  def home
    @potential_client = PotentialClient.new
  end
end
