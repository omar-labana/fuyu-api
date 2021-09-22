class JacketsController < ApplicationController
  def create
    jackets = Jacket.new(jacket_params)

    if jackets.save
      render json: jackets, status: 201
    else
      render json: { error: jackets.errors.full_message }, status: 401
    end
  end

  def index
    render json: Jacket.all, status: :ok
  end

  def show
    jacket = Jacket.find(params[:id])
    if jacket
      render json: jacket, status: :ok
    else
      render json: { error: 'No jacket with this id' }, status: 422
    end
  end

  private

  def jacket_params
    params.permit(:name, :description, :price, :image_url)
  end
end
