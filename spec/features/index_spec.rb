
feature 'index page' do
  scenario "User can enter his/her details" do
    visit "/"
    page.select "3" , from: "day"
    page.select "March" , from: "month"
    click_on "Let's go!"
  end
end

feature 'index page' do
  scenario "Default messages" do
    visit "/"
    expect(page).to have_content("Hello my Friend!")
    expect(page).to have_content("What's Your Name?")
    expect(page).to have_content("When's your Birthday?")
  end
end
