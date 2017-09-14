class UsersController < ApplicationController
  def index
    @users =  if params[:q].present?
                User.where("name like '%#{params[:q]}%' or email like '%#{params[:q]}%'")
              else
                User.all
              end

    @users = @users.includes(:friendships)

    if user_signed_in?
      @users = @users.where('id not in (?)', [current_user.id]).order('name')
      @friendships = current_user.friendships
    end
  end
end
