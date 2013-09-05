require_dependency "seo_pages/application_controller"

module SeoPages
  class SeoPageDefaultsController < ApplicationController
    before_action :set_seo_page_default, only: [:show, :edit, :update, :destroy]

    # GET /seo_page_defaults
    def index
      @seo_page_defaults = SeoPageDefault.first
    end

    # GET /seo_page_defaults/1
    def show
    end

    # GET /seo_page_defaults/new
    # def new
    #   @seo_page_default = SeoPageDefault.new
    # end

    # GET /seo_page_defaults/1/edit
    def edit
    end

    # POST /seo_page_defaults
    # def create
    #   @seo_page_default = SeoPageDefault.new(seo_page_default_params)

    #   if @seo_page_default.save
    #     redirect_to @seo_page_default, notice: 'Seo page default was successfully created.'
    #   else
    #     render action: 'new'
    #   end
    # end

    # PATCH/PUT /seo_page_defaults/1
    def update
      if @seo_page_default.update(seo_page_default_params)
        redirect_to @seo_page_default, notice: 'Seo page default was successfully updated.'
      else
        render action: 'edit'
      end
    end

    # DELETE /seo_page_defaults/1
    def destroy
      @seo_page_default.destroy
      redirect_to seo_page_defaults_url, notice: 'Seo page default was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_seo_page_default
        @seo_page_default = SeoPageDefault.first
      end

      # Only allow a trusted parameter "white list" through.
      def seo_page_default_params
        params.require(:seo_page_default).permit(:page_title, :meta_keywords, :meta_description)
      end
  end
end
