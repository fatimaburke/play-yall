class AddAttachmentThumbnailToStreams < ActiveRecord::Migration[4.2]
  def self.up
    change_table :streams do |t|
      t.attachment :thumbnail
    end
  end

  def self.down
    remove_attachment :streams, :thumbnail
  end
end
