
feature 'message page' do

  before do
    visit "/"
    fill_in "name", with: "Cesare"
    click_on "Let's go!"
  end

  scenario "Birthday message" do
    visit "/message"
    expect(page).to have_content("Happy Birthday, Cesare!")
  end
end
