class Api::V1::StringedInstrumentsController < ApplicationController

  def index
    @stringed_instruments = StringedInstrument.all
  end

  def show
    @stringed_instrument = StringedInstrument.find(params[:id])
  end

  def create
    @stringed_instrument = StringedInstrument.new(name: params[:name], tuning: params[:tuning], number_of_strings: params[:number_of_strings], body_type: params[:body_type])
    
    if @stringed_instrument.save
      render json: @stringed_instrument
    end

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
    format.json render json: "Instrument Deleted"
  
  end

end
