Dado("que esteja na home do site da inmetrics") do
  visit 'http://www.inmetrics.com.br'
end
Quando("clicar no botão Quem somos") do
  find('#menu-item-2960').click
end
Entao("apresentara o texto Mais de {int} anos de atuação") do |int|
  assert_text('MAIS DE 15 ANOS DE ATUAÇÃO')
end