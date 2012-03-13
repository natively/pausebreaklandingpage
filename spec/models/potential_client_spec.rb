require 'spec_helper'

describe PotentialClient do
  before { @potential_client = PotentialClient.new( name: "My Client", email: "email@example.com" ) }
  
  subject { @potential_client }
  
  it { should respond_to( :name ) }
  it { should respond_to( :email ) }
  
  # potential client validation tests
  describe "when name is not present" do
    before { @potential_client.name = " " }
    it { should_not be_valid }
  end
  describe "when name is too long" do
    before { @potential_client.name = "a" * 51 }
    it { should_not be_valid }
  end
  describe "when email is not present" do
    before { @potential_client.email = " " }
    it { should_not be_valid }
  end
  describe "when phone is not present" do
    before { @potential_client.phone = " " }
    it { should_not be_valid }
  end
  describe "when project description is not present" do
    before { @potential_client.project_description = " " }
    it { should_not be_valid }
  end
end
