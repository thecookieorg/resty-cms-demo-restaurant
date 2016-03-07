class OrderingLinksController < ApplicationController
  before_action :set_ordering_link, only: [:show, :edit, :update, :destroy]

  # GET /ordering_links
  # GET /ordering_links.json
  def index
    @ordering_links = OrderingLink.all
  end

  # GET /ordering_links/1
  # GET /ordering_links/1.json
  def show
  end

  # GET /ordering_links/new
  def new
    @ordering_link = OrderingLink.new
  end

  # GET /ordering_links/1/edit
  def edit
  end

  # POST /ordering_links
  # POST /ordering_links.json
  def create
    @ordering_link = OrderingLink.new(ordering_link_params)

    respond_to do |format|
      if @ordering_link.save
        format.html { redirect_to @ordering_link, notice: 'Ordering link was successfully created.' }
        format.json { render :show, status: :created, location: @ordering_link }
      else
        format.html { render :new }
        format.json { render json: @ordering_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordering_links/1
  # PATCH/PUT /ordering_links/1.json
  def update
    respond_to do |format|
      if @ordering_link.update(ordering_link_params)
        format.html { redirect_to @ordering_link, notice: 'Ordering link was successfully updated.' }
        format.json { render :show, status: :ok, location: @ordering_link }
      else
        format.html { render :edit }
        format.json { render json: @ordering_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordering_links/1
  # DELETE /ordering_links/1.json
  def destroy
    @ordering_link.destroy
    respond_to do |format|
      format.html { redirect_to ordering_links_url, notice: 'Ordering link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordering_link
      @ordering_link = OrderingLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ordering_link_params
      params.require(:ordering_link).permit(:url)
    end
end
