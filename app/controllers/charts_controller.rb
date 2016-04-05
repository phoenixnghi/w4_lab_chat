class ChartsController < ApplicationController
  def top_users
    render json: Message.top(:user)
  end

  def message_stats
    render json: Message.group_by_hour(:created_at).count
  end
end
