# frozen_string_literal: true

class Stuff::RegistrationsController < Devise::RegistrationsController
  before_action :authenticate_stuff!, only: [:edit_password, :update_password]
  
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end



  def edit_password
    # Display the password update form
  end

  def update_password
    if current_stuff.update_with_password(stuff_params)
      bypass_sign_in(current_stuff) # Sign in the user bypassing Devise session
      redirect_to root_path, notice: 'Password was successfully updated.'
    else
      render :edit_password
    end
  end

  private

  def stuff_params
    params.require(:stuff).permit(:password, :password_confirmation, :current_password)
  end



















end
