class CreateAdUrls < ActiveRecord::Migration
  def change
    create_table :ad_urls do |t|
    	t.string	:file
      t.timestamps
    end
  end
end
