class ApplicationController < ActionController::Base
  def login_guest
    session = UserSession.new(id: params[:user_id], password: params[:password], remember_me: 0)
    success = session.save
    Rails.logger.info "Trying to login with id #{params[:id]}, #{params[:password]}... #{success}"

    session = UserSession.find
    Rails.logger.info "Persisted user: #{session.user}"
  end
end
