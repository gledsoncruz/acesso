class ApplicationController < ActionController::Base
  #protect_from_forgery
  before_filter :authenticate_user! #, :except => [:show, :index]
  rescue_from CanCan::AccessDenied do |exception|
        flash[:alert] = "Você não possui privilégio para realizar esta operação. Entre em contato com o administrador do sistema." #exception.message
        redirect_to root_url
      end
  
end
