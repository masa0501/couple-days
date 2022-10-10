require 'rails_helper'

RSpec.describe Album, type: :model do
  before do
    @album = FactoryBot.build(:album)
  end


  describe 'albumの投稿が出来る時' do
    context '投稿出来る時' do
      it 'titleとimagesがあれば投稿出来る' do
        expect(@album).to be_valid
      end
    end
    context '投稿できない場合' do
      it 'titleが空では登録できない' do
        @album.title = ''
        @album.valid?
        expect(@album.errors.full_messages).to include("Title can't be blank")
      end
      it 'imagesが空では登録できない' do
        @album.images = nil
        @album.valid?
        expect(@album.errors.full_messages).to include("Images can't be blank")
      end
      it 'userが紐付いていないと保存できない' do
        @album.user = nil
        @album.valid?
        expect(@album.errors.full_messages).to include('User must exist')
      end
    end
  end
end