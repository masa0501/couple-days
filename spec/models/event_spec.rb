require 'rails_helper'

RSpec.describe Event, type: :model do
  before do
    @event = FactoryBot.build(:event)
  end

  describe 'eventの登録' do
    context '登録できる時' do
      it '全てのフォームが入力されていたら登録できる' do
        expect(@event).to be_valid
      end
    end
    context '登録できない時' do
      it 'titleが空では登録出来ない' do
        @event.title = ''
        @event.valid?
        expect(@event.errors.full_messages).to include("Title can't be blank")
      end
      it 'contentが空だと登録出来ない' do
        @event.content = ''
        @event.valid?
        expect(@event.errors.full_messages).to include("Content can't be blank")
      end
      it 'start_timeが空だと登録出来ない' do
        @event.start_time = ''
        @event.valid?
        expect(@event.errors.full_messages).to include("Start time can't be blank")
      end
    end
    it 'userが紐付いていないと保存できない' do
      @event.user = nil
      @event.valid?
      expect(@event.errors.full_messages).to include('User must exist')
    end
  end
end
