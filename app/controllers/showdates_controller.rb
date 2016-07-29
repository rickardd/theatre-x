class ShowdatesController < ApplicationController

  def new
    @date = ShowDate.new
    @show_id = params[:show_id]
    render 'shows/new_date'
  end

  def create
    @date = ShowDate.new( date_params )
    # ToDo: @date.show_id is not white listed (security hole)
    @date.show_id = params[:show_id]
    if @date.save
      flash[:success] = "A date was successfully added"
      redirect_to show_path( id: params[:show_id] )
    else
      render :new
    end
  end

  def edit
    @dates = ShowDate.where( show_id: params[:show_id])
    @show_id = params[:show_id]
    render 'shows/edit_dates'
  end

  def update

    @date = ShowDate.where( id: params[:id] )

    # if @date.update( date: "new date", soldOut: true )
    if @date.update_all( date_params )
      flash[:success] = "The date was successfully updated"
      redirect_to show_path( id: params[:show_id] )
    else
      render :edit
    end

  end

  def destroy
    if ShowDate.destroy( params[:id] )
      flash[:success] = "Date was succesfully deleted"
      redirect_to show_path( id: params[:show_id] )
    else
      render :edit
    end
  end

  private
    def date_params
      params.require(:show_date).permit(:date, :soldOut, :show_id)
    end



end
