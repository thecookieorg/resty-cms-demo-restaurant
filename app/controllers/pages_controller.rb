class PagesController < ApplicationController
  def index
    @socials = Social.all
    @profiles = Profile.all
  end
  
  def show
  end
  
  def order_online
    @socials = Social.all
    @ordering_links = OrderingLink.all
    @profiles = Profile.all
  end
  
  def about
    @socials = Social.all
    @profiles = Profile.all
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:restaurant_name, :short_intro, :address, :about, :phone_number, :email, :iphone_app, :android_app, :monday_hours, :tuesday_hours, :wednesday_hours, :thursday_hours, :friday_hours, :saturday_hours, :sunday_hours, :facebook_url, :twitter_url, :instagram_url, :ordering_url)
    end
end
