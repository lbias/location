class FriendshipsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :create]
  before_action :set_friend_and_user, only: [:create]

  def index
    @friends     = current_user.friends.includes(:friendships).order('name')
    @friendships = current_user.friendships
  end

  def create
    current_user.friendships.create!(friend_id: @friend.id)
    @friend.friendships.create!(friend_id: current_user.id)
    redirect_to user_friendships_path(current_user.id), notice: "You added a friend successfully."
  end

  def destroy
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    redirect_to user_friendships_path(current_user.id), notice: "You removed a friend successfully."
  end

  def set_friend_and_user
    @friend = User.find(params[:user_id])
  rescue ActiveRecord::RecordNotFound
    redirect_to users_path, alert: 'Something went wrong. Please try again'
  end
end
