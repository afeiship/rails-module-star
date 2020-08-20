class ProductsController < ApplicationController
  def show
    @item = Product.find(params[:id])
  end

  def index
    @items = Product.all
  end

  def collect
    @product = Product.find(params[:format])
    current_user = User.find(1)
    unless @product.find_collect(current_user)
      Collect.create(:user => current_user, :product => @product)
      flash[:notice] = "您已成功收藏该商品"
    end
    redirect_to :root
  end

  def uncollect
    @product = Product.find(params[:format])
    current_user = User.find(1)
    collect = @product.find_collect(current_user)
    collect.destroy
    flash[:warning] = "您已取消收藏该商品"
    redirect_to :root
  end
end
