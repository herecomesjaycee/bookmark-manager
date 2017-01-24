
feature 'submit a new link' do
  scenario 'use a form to submit a new link' do
    visit ('/new')
    fill_in 'url', with: 'http://www.makersacademy.com/'
    fill_in 'title', with: 'Makers Academy'
    click_button 'Add link'

    expect(current_path).to eq '/links'

    within 'ul#links' do
      expect(page).to have_content('Makers Academy')
    end
  end
end
