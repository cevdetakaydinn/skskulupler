class News < ActiveRecord::Base
	validates :title, :content, :image, presence: true
end
