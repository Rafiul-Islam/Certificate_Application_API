require 'rails_helper'

# Test suite for the ApplicationProcedure model
RSpec.describe ApplicationProcedure, type: :model do
before :each do
    @item = ApplicationProcedure.new
  end

  it "is valid with valid arrtributes" do
    @item.certificate_type = "something"
    @item.user_id = "something"
    @item.payment = "something"
    expect(@item).to be_valid
  end

  it "is invalid without a Certificate_Type" do
    @item.certificate_type = nil
    expect(@item).to_not be_valid
  end

  it "is invalid without a User_Id" do
    @item.user_id = nil
    expect(@item).to_not be_valid
  end

  it "is invalid without a Payment" do
    @item.payment = nil
    expect(@item).to_not be_valid
  end
end