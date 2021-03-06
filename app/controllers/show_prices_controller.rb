class ShowPricesController < ApplicationController

  def new
    @price = ShowPrice.new
    @show_id = params[:show_id]
  end

  def create
    @price = ShowPrice.new( price_params )
    @price.show_id = params[:show_id]
    @show_id = params[:show_id]
    if @price.save
      flash[:success] = "A new price was successfully added"
      redirect_to show_path( id: params[:show_id] )
    else
      render :new
    end
  end

  def edit
    @prices = ShowPrice.where( show_id: params[:show_id] )
    @show_id = params[:show_id]
  end

  def update
    @price = ShowPrice.find( params[:id] )
    if @price.update( price_params )
      flash[:success] = "The price was successfully updated"
      redirect_to show_path( id: params[:show_id] )
    else
      flash[:errors] = { errors: @price.errors }

      redirect_to show_price_path
      # render :edit
    end
  end

  def destroy
    @price = ShowPrice.find( params[:id] )
    if @price.destroy
      flash[:success] = "A price have been deleted"
      redirect_to show_path( id: @price.show.id )
    else

    end
  end

  private
    def price_params
      params.require(:show_price).permit(:price, :description)
    end

end
