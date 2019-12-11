require 'rails_helper'

RSpec.describe User, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:received_follow_requests) }

    it { should have_many(:sent_follow_requests) }

    it { should have_many(:favorites) }

    it { should have_many(:comments) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
