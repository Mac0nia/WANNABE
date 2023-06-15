class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @artists = Artist.all
  end

  def about
  end

end
