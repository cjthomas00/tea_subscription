class Api::V1::SubscriptionsController < ApplicationController

  def create
    subscription = Subscription.new(subscription_params)
    if subscription.save
      render json: SubscriptionSerializer.new(subscription), status: :created
    else 
      render json: { error: "Unable to create subscription." }, status: 400
    end
  end

  def update
    subscription = Subscription.find(params[:id])
    subscription.update(subscription_params)
    if subscription.save
      render json: SubscriptionSerializer.new(Subscription.update(params[:id], subscription_params))
    else
      render json: { error: "Unable to update subscription." }, status: 400
    end
  end

  private 

  def subscription_params
    params.require(:subscription).permit(:title, :price, :status, :frequency, :customer_id, :tea_id)
  end
end