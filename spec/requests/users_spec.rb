require 'rails_helper'

RSpec.describe "Users", type: :request do
  let(:user) { create(:user) }

  before do
    create(:user)
  end

  describe 'GET /users/:id' do
    it 'success' do
      get user_path(user.id)
      assert_response_schema_confirm(200)
    end
  end

  describe 'GET /users' do
    it 'success' do
      get users_path
      assert_response_schema_confirm(200)
    end

  end

  describe 'GET /users/me' do
    it 'success' do
      get me_users_path
      assert_response_schema_confirm(200)
    end
  end
end
