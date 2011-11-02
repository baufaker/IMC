class CalculadoraImcController < ApplicationController
  
  def index
    
  end
  
  def resultado
    @peso = Float(params[:peso])

    @altura = Float(params[:altura])
    
   @imc = @peso/(@altura * @altura)
  end
  
end
