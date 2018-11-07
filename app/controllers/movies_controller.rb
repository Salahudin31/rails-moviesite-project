class MoviesController < ApplicationController
  def index
  	@movies = Movie.all   
  end

  def new
  	@movie = Movie.new   
  end

  def show_image
  	@movie = Movie.find(params[:id])
  	send_data @movie.image, :type => 'image/png',:disposition => 'inline'
  end

  def show
  	@movie = Movie.find(params[:id])
  end  

  def create
  	@movie = Movie.new(movie_params)   
         
    if @movie.save   
        redirect_to movies_path, notice: "Successfully uploaded."   
    else   
        render "new"   
    end   
  end

  def destroy
  	@movie = Movie.find(params[:id])   
    @movie.destroy   
    redirect_to movies_path, notice:  "Successfully deleted."   
  end

  private   
    def movie_params   
    	params.require(:movie).permit(:title, :serial_film, :bahasa, :sutradara, :durasi, :sinopsis, :tanggal_rilis, :link_movie, :gambar_movie)   
  	end 
end
