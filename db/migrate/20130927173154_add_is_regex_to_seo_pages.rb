class AddIsRegexToSeoPages < ActiveRecord::Migration
  def change
    add_column :seo_pages_seo_pages, :is_regex, :boolean
  end
end
