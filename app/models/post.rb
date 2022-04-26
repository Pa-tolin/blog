class Post < ApplicationRecord
    validates :title, presence: true
    validates :image_url, presence: true
    validates :content, presence: true

    before_save :censurar
    def censurar
        self.content = self.content.gsub('spoiler', '')
    end
end
