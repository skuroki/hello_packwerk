require 'spec_helper'
require 'rails_helper'

RSpec.describe 'Notifying', type: :system do
  before do
    driven_by(:selenium_chrome_headless)
  end

  it 'notifies when blog entry is created' do
    visit new_blog_entry_path
    fill_in 'Title', with: 'foo'
    fill_in 'Content', with: 'bar'
    click_button 'Create Entry'

    visit root_path
    expect(page).to have_text '記事「foo」が作成されました'
  end
end
