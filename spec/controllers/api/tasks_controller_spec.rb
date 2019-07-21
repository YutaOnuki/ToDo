require 'rails_helper'

RSpec.describe Api::TasksController, type: :request do
  before do
    #updated_atで昇順取得のためsleepで時間をずらして作成
    create(:task, name: "running")
    sleep(1)
    create(:task, name: "cooking")
    sleep(1)
    create(:task, name: "working")
  end

  let(:json) { JSON.parse(response.body) }

  describe '#index' do
    it '昇順でTasksを取得できること' do
      get api_tasks_path

      expect(response).to be_success
      expect(response.status).to eq 200
      expect(json["tasks"][0]["name"]).to eq "working"
      expect(json["tasks"][1]["name"]).to eq "cooking"
      expect(json["tasks"][2]["name"]).to eq "running"
    end
  end

  describe '#create' do
    let(:task) { Task.find_by(name: "driving")}

    context 'パラメーターに不足がない場合' do
      it '保存できること' do
        post "/api/tasks", params: { task: {name: "driving"}}

        expect(response).to be_success
        expect(response.status).to eq 201
        expect(json["task"]["name"]).to eq "driving"
        expect(task.name).to eq "driving"
      end
    end

    context 'パラメーターに不足がある場合' do
      it '保存できないこと' do
        post "/api/tasks", params: { task: {name: nil}}

        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.status).to eq 422
        expect(json["name"]).to eq ["can't be blank"]
        expect(task).to be_nil
      end
    end
  end

  describe '#update' do
    let(:task) { Task.all.first}

    context 'パラメーターに不足がない場合' do
      it '更新できること'do
        put "/api/tasks/#{task.id}", params: { task: {name: "moving"} }

        expect(response).to be_success
        expect(response).to have_http_status(:ok)
        expect(response.status).to eq 200
        expect(json["task"]["name"]).to eq "moving"
      end
    end

    context 'パラメーターに不足がある場合' do
      it '更新できないこと' do
        put "/api/tasks/#{task.id}", params: { task: {name: nil} }

        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.status).to eq 422
        expect(json["name"]).to eq ["can't be blank"]
      end
    end
  end
end
