class HomeController < ApplicationController
  respond_to :html, :js
  autocomplete :item, :name, :full => true
  def index
    @items = Item.all

  end

  def search
    if !params[:search].blank?
      @items = Item.search(params[:search])
    end
  end
end
