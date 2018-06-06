module ApplicationHelper
  def current_user
    current_member
  end
  
  def devise_sign_in?
    params[:controller] == 'members/sessions' ? '' : 'display:none;'
  end
  
  def devise_sign_up?
    params[:controller] == 'members/registrations' ? '' : 'display:none;'
  end
  
  def devise_reset_password?
    params[:controller] == 'devise/passwords' ? '' : 'display:none;'
  end
end
