class LikesController < ApplicationController
  def create
    @like = current_user.likes.create(shop_id: params[:shop_id])
    @shop = Shop.find(params[:shop_id])
  end

  def destroy
    @like = current_user.likes.find(params[:id])
    @shop = @like.shop
    @like.destroy
  end

  def ranking
    @shop_ranks = Kaminari.paginate_array(Shop.all_rankings).page(params[:page])
  end
end
