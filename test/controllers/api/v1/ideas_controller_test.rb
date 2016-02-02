require 'test_helper'

class Api::V1::IdeasControllerTest < ActionController::TestCase

  test 'api serves up the index' do
    create(:idea)
    get :index, format: :json
    assert_response :success
  end

  test '#index retunrs the correct number of items' do
    idea_1  = create(:idea)
    idea_2 = create(:idea)

    get :index, format: :json
    assert_equal Idea.count, json_response.count
  end

  test '#index returns an array of records' do
    idea_1  = create(:idea)
    idea_2 = create(:idea)

    get :index, format: :json

    assert_kind_of Array, json_response
  end

  test '#index returns the correct properties' do
    create(:idea)
    get :index, format: :json
    json_response.each do |idea|
      assert idea['name']
      assert idea['body']
      assert idea['quality']
    end
  end

  
end
