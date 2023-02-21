class SessionsController < ApplicationController
    def new
    end

    def create
            # check if they exist
            @user = User.find_by({"email" => params["email"]})
            if @user 
            # if they do check password
            if BCrypt::Password.new(params["password"] == @user["password"])
            # if password correct, log them in 
            redirect_to "/companies"
            else 
                redirect_to "/sessions/new"
            end 
        else 
     redirect_to "/sessions/new"
    end 
end
end 


