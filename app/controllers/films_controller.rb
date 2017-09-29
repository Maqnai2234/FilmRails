class FilmsController < ApplicationController
  before_action :find_film, only: [:edit, :update, :destroy, :show]

  def index
    @films = Film.all
  end
  def new
    @film = Film.new
  end

  def create
    @film = Film.new films_params
    if @film.save
      p "SE CREO SATISFACTORIAMENTE"
      redirect_to films_path
    else
      render :new
      p "NO SE CREO"
    end
  end

  def edit
  end

  def update
    if @film.update films_params
      p "SE ACTUALIZO SATISFACTORIAMENTE"
      redirect_to films_path
    else
      render :edit
      p "NO SE ACTUALIZO"
    end
  end

  def destroy
    @film.destroy
    redirect_to films_path
  end

  def show
  end

  private
  def films_params
    params.require(:film).permit(:title,:year,:rating,:description)
  end

  def find_film
    @film = Film.find(params[:id])
  end
end
