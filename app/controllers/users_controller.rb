class UsersController < ApplicationController

    def index 
        users = User.all 
        render json: users, except: [:created_at, :updated_at]
    end 

    def show 
        user = User.find_by(id: params[:id])
        render json: user, except: [:created_at, :updated_at]
    end

    def create 
        user = User.new(user_params)
        if user.save
            render json: user, except: [:created_at, :updated_at]
        else 
            render json: {errors: user.errors.full_messages}
        end
    end 

    private 
    def user_params 
        params.require(:user).permit(:name, :email, :phone_number, :image_url)
    end 
end
