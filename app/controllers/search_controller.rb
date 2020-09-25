class SearchController < ApplicationController
  # def users_search
  # 	@user_or_book = params[:option]
  # 	if @user_or_book == "1"
  #      @users = User.search(params[:search], @user_or_book)
  #   end
  # end

  # def books_search
  # 	@user_or_book = params[:option]
  # 	if @user_or_book == "2"
  #      @books = Book.search(params[:search], @user_or_book)
  #   end
  # end


  def search
    @model = params["search"]["model"]
    @content = params["search"]["content"]
    @method = params["search"]["method"]
    @records = search_for(@model, @content, @method)
  end

  private
  def search_for(model, content, method)
    if model == '1'
      if method == 'perfect'
        User.where(name: content)
      elsif method == 'forward'
        User.where('name LIKE ?', content+'%')
      elsif method == 'backward'
        User.where('name LIKE ?', '%'+content)
      else
        User.where('name LIKE ?', '%'+content+'%')
      end
    elsif model == '2'
      if method == 'perfect'
        Book.where(title: content)
      elsif method == 'forward'
        Book.where('title LIKE ?', content+'%')
      elsif method == 'backward'
        Book.where('title LIKE ?', '%'+content)
      else
        Book.where('title LIKE ?', '%'+content+'%')
      end
    end
  end
end
