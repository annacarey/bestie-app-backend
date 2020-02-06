class FriendsController < ApplicationController

    def index 
        friends = Friend.all 
        render json: friends, include: {
        user: {except: [:created_at, :updated_at]}
        },
        except: [:created_at, :updated_at]
    end 

    def show 
        friend = Friend.find_by(id: params[:id])
        render json: friend, include: {
        user: {except: [:created_at, :updated_at]}
        },
        except: [:created_at, :updated_at]
    end

end




