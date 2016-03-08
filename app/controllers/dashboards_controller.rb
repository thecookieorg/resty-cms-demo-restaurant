class DashboardsController < ApplicationController
  def index
    @socials = Social.all
    @ordering_links = OrderingLink.all
    @profiles = Profile.all
  end
end
