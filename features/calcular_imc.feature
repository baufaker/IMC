#language: pt

Funcionalidade: calcular imc
  Cenario: pessoa estando acima do peso
    Dado que eu estou na pagina de formulario
    Quando eu informo minha altura com "1.7"
    E meu peso com "80" 
    E clico em "calcular"
    Então devo ver "27.68"
    E sou avisado que estou com "peso em excesso"