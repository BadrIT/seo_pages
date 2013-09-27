require_dependency "seo_pages/application_controller"

module SeoPages
  class SeoPagesController < ApplicationController
    before_action :set_seo_page, only: [:show, :edit, :update, :destroy]

    # GET /seo_pages
    def index
      @seo_defaults = SeoPageDefault.first
      @seo_pages = SeoPage.all
    end

    # GET /seo_pages/1
    def show
    end

    # GET /seo_pages/new
    def new
      @seo_page = SeoPage.new
    end

    # GET /seo_pages/1/edit
    def edit
    end

    # POST /seo_pages
    def create
      @seo_page = SeoPage.new(seo_page_params)

      if @seo_page.save
        redirect_to @seo_page, notice: 'Seo page was successfully created.'
      else
        render action: 'new'
      end
    end

    # PATCH/PUT /seo_pages/1
    def update
      if @seo_page.update(seo_page_params)
        redirect_to @seo_page, notice: 'Seo page was successfully updated.'
      else
        render action: 'edit'
      end
    end

    # DELETE /seo_pages/1
    def destroy
      @seo_page.destroy
      redirect_to seo_pages_url, notice: 'Seo page was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_seo_page
        @seo_page = SeoPage.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def seo_page_params
        params.require(:seo_page).permit(:url_identifier, :is_regex, :page_title, :meta_keywords, :meta_description)
      end
  end
end
