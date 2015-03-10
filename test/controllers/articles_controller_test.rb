require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articles)
  end

test "should create article" do
  assert_difference('Article.count') do
    post :create, article: {title: 'Some title'}
  end

  assert_redirected_to article_path(assigns(:article))
end

test "index should render correct template and layout" do
  get :index
  assert_template :index
  assert_template layout: "layouts/application"
end

test "should route to article" do
  assert_routing '/articles/1', {controller: "articles", action: "show", id: "1"}
end

end
