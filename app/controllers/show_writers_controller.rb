class ShowWritersController < ApplicationController

  def edit
    @writers = ShowWriter.where( show_id: params[:show_id])
    @show_id = params[:show_id]
    render 'shows/edit_show'
  end

  def update

    @writer = ShowWriter.where( id: params[:id] )

    render json: params[:show_id].to_json
    # if @writer.update_all( date_params )
    #   flash[:success] = "The date was successfully updated"
    #   redirect_to show_path( id: params[:show_id] )
    # else
    #   render :edit
    # end

  end

end
