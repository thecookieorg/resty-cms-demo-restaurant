require 'test_helper'

class OrderingLinksControllerTest < ActionController::TestCase
  setup do
    @ordering_link = ordering_links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ordering_links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ordering_link" do
    assert_difference('OrderingLink.count') do
      post :create, ordering_link: { url: @ordering_link.url }
    end

    assert_redirected_to ordering_link_path(assigns(:ordering_link))
  end

  test "should show ordering_link" do
    get :show, id: @ordering_link
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ordering_link
    assert_response :success
  end

  test "should update ordering_link" do
    patch :update, id: @ordering_link, ordering_link: { url: @ordering_link.url }
    assert_redirected_to ordering_link_path(assigns(:ordering_link))
  end

  test "should destroy ordering_link" do
    assert_difference('OrderingLink.count', -1) do
      delete :destroy, id: @ordering_link
    end

    assert_redirected_to ordering_links_path
  end
end
