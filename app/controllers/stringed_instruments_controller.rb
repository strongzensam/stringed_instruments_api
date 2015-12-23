class StringedInstrumentsController < ApplicationController
  
  def index
    @stringed_instruments = StringedInstrument.all
  end

  def show
    @stringed_instrument = StringedInstrument.find(params[:id])
  end
  def create
    @stringed_instrument = StringedInstrument.create(name: params[:name], number_of_strings: params[:number_of_strings])
    render :show
  end
  def edit
  end
  def update
    @stringed_instrument = StringedInstrument.find(params[:id])
    @stringed_instrument.update(name: params[:name], tuning: params[:tuning],number_of_strings: params[:number_of_strings])
    render :show
  end
  def destroy
    StringedInstrument.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to "/stringed_instruments"}
      format.json { render json: "Instrument Deleted"}
    end
  end

end
