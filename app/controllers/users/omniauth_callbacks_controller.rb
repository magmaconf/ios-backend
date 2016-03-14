class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    @user = User.from_omniauth(request.env['omniauth.auth'])

    if @user.persisted?
      track_login_or_create
      set_flash_message(:notice, :success, kind: 'Facebook') if is_navigational_format?

      if is_mobile?
        sign_in_and_redirect @user, event: :authentication
      else
        sign_in @user
        @after_sign_in_url = after_sign_in_path_for(@user)
        render 'callback', :layout => false
      end
    else
      session['devise.facebook_data'] = request.env['omniauth.auth']

      if is_mobile?
        redirect_to new_user_registration_url
      else
        @after_sign_in_url = new_user_registration_url
        render 'callback', :layout => false
      end
    end
  end

  def failure
    @after_sign_in_url = new_user_registration_url
    render 'callback', :layout => false
  end

end
