require 'rails_helper'

RSpec.describe EventsController, type: :controller do

  describe "GET #index" do
    context 'when parent resource is user' do
      it 'returns all events associated with user' do
        user = User.create
        user_id = user.id

        event = Event.create(user_id: user_id)
        event_2 = Event.create

        get :index, user_id: user_id

        expect(assigns(:events)).to eq([event])
      end
    end

    context 'when parent resource is club' do
      it 'returns all events associated with club' do
        club = Club.create
        club_id = club.id

        event = Event.create(club_id: club_id)
        event_2 = Event.create

        get :index, club_id: club_id

        expect(assigns(:events)).to eq([event])
      end
    end

    context 'when there is no parent resource' do
      it 'returns all events' do
        event = Event.create(club_id: 1)
        event_2 = Event.create(user_id: 2)

        get :index

        expect(assigns(:events)).to eq([event, event_2])
      end
    end
  end
end
