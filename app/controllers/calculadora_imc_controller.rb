class CalculadoraImcController < ApplicationController
  
  def index
    
  end
  
  def resultado
    @peso = Float(params[:peso])
    @altura = Float(params[:altura])
    @imc = @peso/(@altura * @altura)
    
    # Maldito Rails que não tem o operador de menor ou igual.
    if((@imc < 18.5) || (@imc == 18.5)) 
      @mensagem = 'magreza'
    elsif((@imc > 18.5) && (@imc < 25))
      @mensagem = 'saude'
    elsif((@imc > 24.9) && (@imc < 30))  
      @mensagem = 'peso em excesso'
    elsif((@imc > 30) && (@imc == 30))
      @mensagem = 'obesidade'
    end
      
  end
  
end
