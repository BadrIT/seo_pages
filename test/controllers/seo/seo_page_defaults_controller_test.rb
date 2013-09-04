require 'test_helper'

module Seo
  class SeoPageDefaultsControllerTest < ActionController::TestCase
    setup do
      @seo_page_default = seo_page_defaults(:one)
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:seo_page_defaults)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create seo_page_default" do
      assert_difference('SeoPageDefault.count') do
        post :create, seo_page_default: { meta_description: @seo_page_default.meta_description, meta_keywords: @seo_page_default.meta_keywords, page_title: @seo_page_default.page_title }
      end

      assert_redirected_to seo_page_default_path(assigns(:seo_page_default))
    end

    test "should show seo_page_default" do
      get :show, id: @seo_page_default
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @seo_page_default
      assert_response :success
    end

    test "should update seo_page_default" do
      patch :update, id: @seo_page_default, seo_page_default: { meta_description: @seo_page_default.meta_description, meta_keywords: @seo_page_default.meta_keywords, page_title: @seo_page_default.page_title }
      assert_redirected_to seo_page_default_path(assigns(:seo_page_default))
    end

    test "should destroy seo_page_default" do
      assert_difference('SeoPageDefault.count', -1) do
        delete :destroy, id: @seo_page_default
      end

      assert_redirected_to seo_page_defaults_path
    end
  end
end
