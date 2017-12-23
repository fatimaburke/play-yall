class StreamsController < ApplicationController
before_action :authenticate_user!, :except => [:show, :index]

  def index
    @streams = Stream.all
  end

  def show
    @stream = Stream.find_by_id(params[:id])
    @messages = Message.all
    # @message = Message.new
    opentok = OpenTok::OpenTok.new '46027242', '3f2d5e712234b65a45a0d9c34839e9f59aa870d1'
    @session = opentok.create_session
    @session_id = @session.session_id
    # generate opentok token
    @token = @session.generate_token
  end

  def new
    @stream = Stream.new
  end

  def edit
    @stream = Stream.find(params[:id])
  end

  def create
    @stream = current_user.streams.new(stream_params)

    if @stream.save
      flash[:success] = 'New Stream Added'
      redirect_to @stream
    else
      render 'new'
    end
  end

  def update
    @stream = Stream.find(params[:id])

    if @stream.update(stream_params)
      redirect_to @stream
    else
      render 'edit'
    end
  end

  def destroy
    @stream = Stream.find(params[:id])
    @stream.destroy

    redirect_to streams_path
  end


  private
    def stream_params
      params.require(:stream).permit(:title, :desc, :location, :genre, :instrument, :thumbnail)
    end

end
