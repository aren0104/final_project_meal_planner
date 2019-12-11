require 'rails_helper'

RSpec.describe MealPlan, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:favorites) }

    end

    describe "InDirect Associations" do

    it { should have_many(:cuisines) }

    it { should have_many(:dishes) }

    end

    describe "Validations" do
      
    end
end
