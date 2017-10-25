class CreatePostTaggings < ActiveRecord::Migration[5.1]
  def change
    create_table :post_taggings do |t|
    	t.belongs_to :post, index: true
      	t.belongs_to :tag, index: true
    end
  end
end
