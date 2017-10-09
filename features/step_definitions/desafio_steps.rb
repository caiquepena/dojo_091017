Dado("que esteja logado no site da ORANGEHRM como admin") do
  visit "http://opensource.demo.orangehrmlive.com/index.php/auth/login"
  fill_in('txtUsername', :with => "admin")
  fill_in('txtPassword', :with => "admin")
  click_button('btnLogin')
end

Quando("clicar em PIM") do
  find('#menu_pim_viewPimModule').click
end

Quando("clicar em Add Employee") do
  find(:xpath, '//a[text()="Add Employee"]').click
end

Então("eu efetuo o cadastro do funcionario com sucesso") do
  fill_in('firstName', :with => "Giovanna")
  fill_in('middleName', :with => "Bereta")
  fill_in('lastName', :with => "Autilio")
  check('chkLogin')
  fill_in('user_name', :with => "giovannaTESTE4")
  fill_in('user_password', :with => "Mudar@12345")
  fill_in('re_password', :with => "Mudar@12345")
  select('Enable', :from => 'status')
  
  find(:xpath, '//input[@type="button"][@id="btnSave"]').click
end

Quando("eu clicar em Edit") do
  click_button('btnSave')
end

Quando("altero o campo First Name e Last Name") do
  fill_in('personal[txtEmpFirstName]', :with => "Primeiro nome ALTERADO")
   fill_in('personal[txtEmpMiddleName]', :with => "Nome do meio ALTERADO")
   fill_in('personal[txtEmpLastName]', :with => "Ultimo nome ALTERADO")
   choose('personal_optGender_1')
   select('Malian', :from => 'personal_cmbNation')
   click_button('btnSave')
end

Então("o cadastro é atualizado com sucesso") do
 assert_text('Successfully Saved')
end