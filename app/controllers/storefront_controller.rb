class StorefrontController < ApplicationController
  def all_items
    @items = Item.all
  end

  def items_by_category
    @category = Category.find(params[:cat_id])
    @items = Item.all
    @items_by_cat = []
    
    @items.each do |item|
      if item.category_id == params[:cat_id].to_i
        @items_by_cat.push(item)
      end
    end
  end
end
