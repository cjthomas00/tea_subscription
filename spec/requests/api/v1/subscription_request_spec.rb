require "rails_helper"

RSpec.describe "Subscription API" do
  before :each do 
    @customer_1 = create(:customer)
    @tea_1 = create(:tea)
  end

  it "creates a new subscription" do
    expect(Subscription.count).to eq(0)
    subscription_params = {
    title: "Monthly Earl Grey",
    price: 19.99,
    status: 1,
    frequency: 1,
    customer_id: @customer_1.id,
    tea_id: @tea_1.id}
    
    post "/api/v1/subscriptions", params: subscription_params, headers: { "Content_Type" => "application/json", "Accept" => "application/json" }, as: :json

    expect(response).to be_successful
    expect(response.status).to eq(201)
    expect(Subscription.count).to eq(1)
    expect(@customer_1.subscriptions.size).to eq(1)
    expect(@customer_1.subscriptions.first.title).to eq("Monthly Earl Grey")
    expect(@customer_1.subscriptions.first.price).to eq(19.99)
    expect(@customer_1.subscriptions.first.status).to eq("active")
    expect(@customer_1.subscriptions.first.frequency).to eq("monthly")
    expect(@customer_1.teas.size).to eq(1)
    expect(@customer_1.teas.first.title).to eq(@tea_1.title)
    expect(@customer_1.teas.first.description).to eq(@tea_1.description)
    expect(@customer_1.teas.first.temperature).to eq(@tea_1.temperature)
    expect(@customer_1.teas.first.brew_time).to eq(@tea_1.brew_time)
  end

  it "won't create a subscription if params are missing" do
    subscription_params = {
    title: "",
    price: 19.99,
    status: 1,
    frequency: 1,
    customer_id: @customer_1.id,
    tea_id: @tea_1.id}
    
    post "/api/v1/subscriptions", params: subscription_params, headers: { "Content_Type" => "application/json", "Accept" => "application/json" }, as: :json
    
    expect(response).to_not be_successful
    expect(response.status).to eq(401)
  end
end