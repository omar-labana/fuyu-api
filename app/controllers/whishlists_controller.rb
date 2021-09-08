class WhishlistsController < ApplicationController
    before_action :current_user
  def index
    render json: current_user.jackets, status: :ok
  end

  def create
    whishlist = Whishlist.new(user_id: current_user.id, jacket_id: params[:jacket_id])

    if whishlist.save
      render json: { whishlist: 'jacket added to your whishlist' }, status: 201
    else
      render json: { error: whishlist.errors.full_messages }, status: 401
    end
  end
end
