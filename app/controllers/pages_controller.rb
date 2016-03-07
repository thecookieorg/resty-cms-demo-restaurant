class PagesController < ApplicationController
  def index
    @socials = Social.all
  end
  
  def order_online
    @socials = Social.all
    @ordering_links = OrderingLink.all
  end
end
