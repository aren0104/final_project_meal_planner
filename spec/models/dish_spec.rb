require 'rails_helper'

RSpec.describe Dish, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:cuisine) }

    it { should have_many(:favorites) }

    it { should have_many(:comments) }

    end

    describe "InDirect Associations" do

    it { should have_many(:meals) }

    end

    describe "Validations" do
      
    end
end
