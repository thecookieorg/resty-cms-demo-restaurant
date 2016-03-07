class PagesController < ApplicationController
  def index
    @socials = Social.all
    @profiles = Profile.all
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
end
