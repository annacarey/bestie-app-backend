require 'twilio-ruby'

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

    def create 
        friend = Friend.new(friend_params)
        if friend.save 
            render json: friend, except: [:created_at, :updated_at]
        else 
            render json: {errors: friend.errors.full_messages}
        end 
    end 

    def update
        friend = Friend.find_by(id: params[:id])
        friend.update(date_last_outreach: params[:date_last_outreach])
        render json: friend
    end

    def delete
        friend = Friend.find_by(id: params[:id])
        friend.destroy
    end

    def confirmation
        user = User.find_by(id: params[:number])
        phone_number = user.phone_number
        account_sid = ENV["TWILIO_ACCOUNT_SID"]
        auth_token = ENV["TWILIO_AUTH_TOKEN"]
        
        @client = Twilio::REST::Client.new(account_sid, auth_token)

        message = @client.messages
        .create(
            body: 'Thank you for signing up to Bestie!',
            from: '+17867237843',
            to: phone_number
        )

        puts message.sid
    end 

    private 
    def friend_params 
        params.require(:friend).permit(:name, :phone_number, :image_url, :priority, :user_id, :date_last_outreach)
    end 

end




