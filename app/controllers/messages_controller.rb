class MessagesController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    respond_to do |format|
      format.html { render layout: false }
      format.js
    end
  end

  def create
    @message = current_user.messages.build message_params
    if @message.save
      respond_to do |format|
        format.js
        format.html {
          redirect_to root_path
        }
      end
    else
      respond_to do |format|
        format.js
        format.html {
          redirect_to root_path
        }
      end
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
