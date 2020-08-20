class ProductsController < ApplicationController
  def collect
    @product = Product.find(params[:id])
    unless @product.find_collect(cuurent_user)
      Collect.create(:user => current_user, :product => @product)
      flash[:notice] = "您已成功收藏该商品"
    end
    redirect_to :back
  end

  def uncollect
    @product = Product.find(params[:id])
    collect = @product.find_collect(current_user)
    collect.destroy
    flash[:warning] = "您已取消收藏该商品"
    redirect_to :back
  end
end
