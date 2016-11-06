require 'rails_helper'

RSpec.describe "clubs/edit", type: :view do
  before(:each) do
    @club = assign(:club, Club.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit club form" do
    render

    assert_select "form[action=?][method=?]", club_path(@club), "post" do

      assert_select "input#club_name[name=?]", "club[name]"
    end
  end
end
