class PagesController < ApplicationController
  def index
    @socials = Social.all
  end
end
