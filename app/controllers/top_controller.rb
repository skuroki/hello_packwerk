class TopController < ApplicationController
  def index
    @notifications = Top::Notification.all
    render
  end
end
