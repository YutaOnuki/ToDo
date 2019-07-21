require 'rails_helper'

RSpec.describe Task, type: :model do
  context '#validates' do
    subject { Task.new(name: name, is_done: is_done) }

    context 'nameがない場合' do
      let(:name) { nil }
      let(:is_done) { false }

      it '登録できないこと' do
        expect(subject.valid?).to be false
      end
    end
  end
end
