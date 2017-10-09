Dado("que esteja na home do site da DEMOQA") do
  visit  "http://demoqa.com"
end

Quando("clicar no botão Registration") do
  find('#menu-item-374').click
end

Quando("efetuar o cadastro de todos os campos obrigatórios e clicar em Submit") do
 	fill_in('first_name', :with=> 'Caique')
 	fill_in('last_name', :with=> 'Pena da Silva')
 	find(:xpath, '//*[contains(text(), "Married")]//following::input[1]').click
 	find(:xpath, '//*[contains(text(), "Dance")]//following::input[1]').click
 	select('Brazil', :from => 'dropdown_7')
 	select('2', :from => 'date_8[date][mm]')
 	select('14', :from => 'date_8[date][dd]')
 	select('1995', :from => 'date_8[date][yy]')
 	fill_in('phone_9', :with=>'11958852969')
 	fill_in('username', :with => 'caiquepenaUSER2')
 	fill_in('e_mail', :with => 'caiquepena2@outlook.com')
 	fill_in('description', :with => 'Estou realizando o segundo exercicio do DOJO nivel 1')
 	fill_in('password_2', :with=> 'Testeautomatizado1234@')
 	fill_in('confirm_password_password_2', :with=> 'Testeautomatizado1234@')
 	find(:xpath, '//input[@type="submit"][@name="pie_submit"]').click
 end
Então("o cadastro tera sido efetuado com sucesso") do
  assert_text('Thank you for your registration')
end