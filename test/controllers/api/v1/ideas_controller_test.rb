[require 'test_helper'

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

  test '#show will always return 1 idea' do
    idea_1 = create(:idea)
    idea_2 = create(:idea)

    get :show, format: :json, id: Idea.first.id
    assert_response :success

    assert_kind_of Hash, json_response
  end

  test '#show returns the correct idea' do
    idea_1 = create(:idea)
    idea_2 = create(:idea)

    get :show, format: :json, id: Idea.first.id
    assert_response :success

    assert_equal Idea.first.id, json_response['id']
  end

  test '#destroy allows you to destroy an idea' do
    idea_1 = create(:idea)
    idea_2 = create(:idea)
    get :destroy, format: :json, id: idea_1.id

    refute_equal idea_2.id, json_response['id']
    assert_equal idea_2.id, Idea.first.id
  end

  test '#create action allows you to create an idea' do
    get :create, format: :json, name: 'testing', body: 'more testing', quality: 1

    assert_equal Idea.first.id , json_response['id'],
    json_response.each do |idea|
      assert idea['name']
      assert idea['body']
      assert idea['quality']
    end
  end

  test '#update action allows you to update an idea' do
    idea_1 = create(:idea)
    get :update, format: :json, id: idea_1.id, name: 'testing', body: 'change testing', quality: 2

    binding.pry
    assert_equal json_response['name'], 'testing'
    assert_equal json_response['body'], 'change testing'
  end
end
