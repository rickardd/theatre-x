class AvatarsController < ApplicationController
  before_action :set_avatar, only: [:show, :edit, :update, :destroy]

  # GET /avatars
  # GET /avatars.json
  def index
    @avatars = Avatar.all
  end

  # GET /avatars/1
  # GET /avatars/1.json
  def show
  end

  # GET /avatars/new
  def new
    @avatar = Avatar.new
    # @show = Show.find(5)
  end

  # GET /avatars/1/edit
  def edit
    # @show = Show.find(params[:show_id])
    # @avatar = @show.avatar
  end

  # POST /avatars
  # POST /avatars.json
  def create
    debugger
    @avatar = Avatar.new(avatar_params)

    respond_to do |format|
      if @avatar.save
        @show = Show.find(params[:show_id])
        format.html {
          flash[:success] = 'Avatar was successfully created'
          redirect_to show_path(@show)
        }
        format.json { render :show, status: :created, location: @avatar }
      else
        format.html { render :new }
        format.json { render json: @avatar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /avatars/1
  # PATCH/PUT /avatars/1.json
  def update
    respond_to do |format|
      if @avatar.update(avatar_params)
        format.html {
          flash[:success] = 'Avatar was successfully updated.'
          redirect_to show_path(id: params[:show_id])
        }
        format.json { render :show, status: :ok, location: @avatar }
      else
        format.html { render :edit }
        format.json { render json: @avatar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avatars/1
  # DELETE /avatars/1.json
  def destroy
    @avatar.destroy
    respond_to do |format|
      format.html { redirect_to avatars_url, notice: 'Avatar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_avatar
      show = Show.find(params[:show_id])
      @avatar = show.avatar
      # @avatar = Avatar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def avatar_params
      params.require(:avatar).permit(:image, :category, :category_id, :show_id)
    end
end
