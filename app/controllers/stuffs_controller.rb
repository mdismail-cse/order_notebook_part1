class StuffsController < ApplicationController
    before_action :authenticate_stuff!, only: [:show, :update]
  
    def show
      @stuff = current_stuff
    end
  
    def update
      @stuff = current_stuff
  
      if @stuff.update(stuff_params)
        redirect_to root_path, notice: 'Stuff was successfully updated.'
      else
        render :show
      end
    end
  
    private
  
    def stuff_params
      params.require(:stuff).permit(:password, :password_confirmation)
    end
  end
  