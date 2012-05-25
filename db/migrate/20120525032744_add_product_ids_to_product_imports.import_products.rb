# This migration comes from import_products (originally 20120325005930)
class AddProductIdsToProductImports < ActiveRecord::Migration
  def change
    add_column  :spree_product_imports, :product_ids, :text
  end
end