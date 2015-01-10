class StaticPagesController < ApplicationController
  def home
    @shouts = Shout.all
  end
end 