class AddUrlsToBrands < ActiveRecord::Migration
  def change
    add_column :brands, :rakuten2ndURL, :string
    add_column :brands, :categoryRakutenHTML, :text
    add_column :brands, :categoryRakuten2ndHTML, :text
    add_column :brands, :categoryYahooHTML, :text
    add_column :brands, :categoryYahooSPHTML, :text
    add_column :brands, :categoryOfficialHTML, :text
  end
end
