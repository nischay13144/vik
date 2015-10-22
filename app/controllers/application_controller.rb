class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  helper_method :mailbox
  
  private

  def mailbox
    @mailbox ||= current_user.mailbox
  end
  
  protected

  def conversation
    @msg_conversation ||= mailbox.conversations.find(params[:id])
  end

  protect_from_forgery with: :exception
end
