require "rails_helper"

RSpec.describe "Customer API" do
  before :each do 
    @customer_1 = create(:customer)
    @customer_2 = create(:customer)
    create_list(:tea, 5)
    @customer_1.subscriptions.create(title: "Monthly Earl Grey", price: 19.99, status: 1, frequency: 1, tea_id: Tea.first.id)
    @customer_1.subscriptions.create(title: "Annual Earl Grey", price: 199.99, status: 0, frequency: 3, tea_id: Tea.second.id)
    @customer_1.subscriptions.create(title: "Quarterly Herbal", price: 119.99, status: 1, frequency: 2, tea_id: Tea.third.id)
    @customer_1.subscriptions.create(title: "Weekly Sleepytime", price: 9.99, status: 1, frequency: 0, tea_id: Tea.fourth.id)
    @customer_1.subscriptions.create(title: "Monthly Citrus", price: 29.99, status: 0, frequency: 1, tea_id: Tea.fifth.id)
    @customer_2.subscriptions.create(title: "Quarterly Herbal", price: 119.99, status: 1, frequency: 2, tea_id: Tea.third.id)
    @customer_2.subscriptions.create(title: "Monthly Earl Grey", price: 19.99, status: 0, frequency: 1, tea_id: Tea.first.id)
    @customer_2.subscriptions.create(title: "Monthly Citrus", price: 29.99, status: 1, frequency: 1, tea_id: Tea.fifth.id)
    
    get "/api/v1/customers/#{@customer_1.id}/subscriptions"
  end
  
  it "shows a customers subscriptions" do
    expect(response).to be_successful
    expect(response.status).to be(200)
    expect(@customer_1.subscriptions.size).to eq(5)

    parsed_data = JSON.parse(response.body, symbolize_names: true)
    
    expect(parsed_data).to be_a Hash
    expect(parsed_data[:data]).to be_a Array
    

    parsed_data[:data].each do |data|
      expect(data.keys).to eq([:id, :type, :attributes])
      expect(data[:id]).to be_a String
      expect(data[:type]).to eq("subscription")
      expect(data[:attributes].keys).to eq([:title, :price, :status, :frequency, :customer_id, :tea_id])
      expect(data[:attributes][:customer_id]).to eq(@customer_1.id)
    end
  end

  it "only shows subscriptions from a specific customer" do
    parsed_data = JSON.parse(response.body, symbolize_names: true)
    expect(@customer_1.subscriptions.size).to eq(5)
    expect(parsed_data[:data].size).to eq(@customer_1.subscriptions.size)
    expect(parsed_data[:data].size).to_not eq(@customer_2.subscriptions.size)
    expect(Subscription.all.size).to eq(8)
  end
end