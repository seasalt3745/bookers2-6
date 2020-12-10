class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_correct_user, only: [:edit, :update]

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  # def show
  #   @user = User.find(params[:id])
  #     @currentUserEntry = Entry.where(user_id: current_user.id)
  #     @userEntry=Entry.where(user_id: @user.id)
  #     unless @user.id == current_user.id
  #       @currentUserEntry.each do |cu|
  #         @userEntry.each do |u|
  #           if cu.room_id == u.room_id then
  #             @isRoom = true
  #             @roomId = cu.room_id
  #           end
  #         end
  #       end

  #       unless @isRoom
  #         @room = Room.new
  #         @entry = Entry.new
  #       end
  #     end
  # end

  def index
    @users = User.all
    @book = Book.new
  end

  def edit
    # @user = User.find(params[:id])
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user), notice: "You have updated user successfully."
    else
      render "edit"
    end
  end

  # def hide
  # end

  # def withdrawal
  #       @user.update(is_deleted: true)
  #       reset_session
  #       redirect_to root_path
  # end

  private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

  def ensure_correct_user
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to user_path(current_user)
    end
  end
end
