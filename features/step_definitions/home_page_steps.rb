Given(/^there's a book titled "(.*?)" with "(.*?)" description$/) do |title, description|
  @book = FactoryGirl.create(:book, title: title, description: description)
end

When(/^I am on the homepage$/) do
  visit "/"
end

Then(/^I should see the "(.*?)" book$/) do |title|
  @description = Book.find_by_title(title)
  expect(page).to have_content(@book.title)
  expect(page).to have_content(@book.description)
end
