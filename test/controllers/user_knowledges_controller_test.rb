require 'test_helper'

class UserKnowledgesControllerTest < ActionController::TestCase
  setup do
    @user_knowledge = user_knowledges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_knowledges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_knowledge" do
    assert_difference('UserKnowledge.count') do
      post :create, user_knowledge: { date: @user_knowledge.date, knowledge_id: @user_knowledge.knowledge_id, user_id: @user_knowledge.user_id }
    end

    assert_redirected_to user_knowledge_path(assigns(:user_knowledge))
  end

  test "should show user_knowledge" do
    get :show, id: @user_knowledge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_knowledge
    assert_response :success
  end

  test "should update user_knowledge" do
    patch :update, id: @user_knowledge, user_knowledge: { date: @user_knowledge.date, knowledge_id: @user_knowledge.knowledge_id, user_id: @user_knowledge.user_id }
    assert_redirected_to user_knowledge_path(assigns(:user_knowledge))
  end

  test "should destroy user_knowledge" do
    assert_difference('UserKnowledge.count', -1) do
      delete :destroy, id: @user_knowledge
    end

    assert_redirected_to user_knowledges_path
  end
end
