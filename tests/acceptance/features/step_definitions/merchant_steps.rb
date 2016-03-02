
Given(/^the list of merchants in Aurus:$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
 puts table
end

Given(/^I am a user with merchantId (.*)$/) do |mercantId|
  puts mercantId
end

When(/^I try get the information of my merchant$/) do
  puts 'llamar al controlador'
end

Then(/^I can see the address (.*)$/) do |address|
  puts 'la direccion debe ser: ' + address
end