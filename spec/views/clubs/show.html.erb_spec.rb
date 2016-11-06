require 'rails_helper'

RSpec.describe "clubs/show", type: :view do
  before(:each) do
    @club = assign(:club, Club.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
