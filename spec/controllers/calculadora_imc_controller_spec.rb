require 'spec_helper'

describe CalculadoraImcController do
  
  describe 'Calcular IMC' do
    before do
      get 'resultado', {:altura => 1.7, :peso => 80}#como lá no controller, as variásveis que vamos inspecionar estão
      # recebendo params[:peso] e params[:altura], setei o peso e a altura para efeito de teste.
    end
    
    describe 'peso' do
      #O assigns serve para pegar a variável pelo que tem no controller da view do get '...'
      it { assigns(:peso).should == 80 }
    end
    
    describe 'altura' do
      it { assigns(:altura).should == 1.7 }
    end
  end
  
end