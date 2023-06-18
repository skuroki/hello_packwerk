require 'rails_helper'

RSpec.describe "blog/entries/index", type: :view do
  before(:each) do
    assign(:blog_entries, [
      Blog::Entry.create!(
        title: "Title",
        content: "MyText"
      ),
      Blog::Entry.create!(
        title: "Title",
        content: "MyText"
      )
    ])
  end

  it "renders a list of blog/entries" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
