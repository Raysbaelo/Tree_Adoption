class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :instructions ]

  def home
  end

  def instructions
  end
end
