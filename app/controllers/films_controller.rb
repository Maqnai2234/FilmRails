class FilmsController < ApplicationController
  def index
    @films = Film.all
  end
  def new
  end
end
