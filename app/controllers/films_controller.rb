class FilmsController < ApplicationController
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
    @film = Film.find(params[:id])
  end

  def update
    @film = Film.find(params[:id])
    if @film.update films_params
      p "SE ACTUALIZO SATISFACTORIAMENTE"
      redirect_to films_path
    else
      render :edit
      p "NO SE ACTUALIZO"
    end
  end

  private
  def films_params
    params.require(:film).permit(:title,:year,:rating,:description)
  end
end
