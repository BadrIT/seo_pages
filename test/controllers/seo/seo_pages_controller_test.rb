require 'test_helper'

module Seo
  class SeoPagesControllerTest < ActionController::TestCase
    setup do
      @seo_page = seo_pages(:one)
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:seo_pages)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create seo_page" do
      assert_difference('SeoPage.count') do
        post :create, seo_page: { meta_description: @seo_page.meta_description, meta_keywords: @seo_page.meta_keywords, page_title: @seo_page.page_title, url_identifier: @seo_page.url_identifier }
      end

      assert_redirected_to seo_page_path(assigns(:seo_page))
    end

    test "should show seo_page" do
      get :show, id: @seo_page
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @seo_page
      assert_response :success
    end

    test "should update seo_page" do
      patch :update, id: @seo_page, seo_page: { meta_description: @seo_page.meta_description, meta_keywords: @seo_page.meta_keywords, page_title: @seo_page.page_title, url_identifier: @seo_page.url_identifier }
      assert_redirected_to seo_page_path(assigns(:seo_page))
    end

    test "should destroy seo_page" do
      assert_difference('SeoPage.count', -1) do
        delete :destroy, id: @seo_page
      end

      assert_redirected_to seo_pages_path
    end
  end
end
