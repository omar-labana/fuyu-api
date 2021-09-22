class WhishlistsController < ApplicationController
  include CurrentUserConcern

  def show
    user = User.find_by(id: params[:id])
    if user
      render json: user.jackets, status: :ok
    else
      render json: { status: 401 }
    end
  end

  def create
    whishlist = Whishlist.new(user_id: params[:user_id], jacket_id: params[:jacket_id])

    if whishlist.save
      render json: { whishlist: 'jacket added to your whishlist' }, status: 201
    else
      render json: { error: whishlist.errors.full_messages }, status: 401
    end
  end
end
