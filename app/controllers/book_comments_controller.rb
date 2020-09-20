class BookCommentsController < ApplicationController
  def create
  	book = Book.find(params[:book_id])
    @book_comment = current_user.book_comments.new(book_comment_params)
 	# comment = BookComment.new(book_comment_params)
	# comment.user_id = current_user.id
    @book_comment.book_id = book.id
    if @book_comment.save
       redirect_to book_path(book)
    else
    	@book = Book.new
	    @booker = Book.find(params[:book_id])
	    @user = User.find(current_user.id)
       render 'books/show'
    end
  end


  def destroy
  	BookComment.find_by(id: params[:id], book_id: params[:book_id]).destroy
    redirect_to book_path(params[:book_id])
  end


  private

  def book_comment_params
    params.require(:book_comment).permit(:comment)
  end

end
