class Post < ApplicationRecord

validates :title, presence: true
validates :picture, presence: true
validates :content, presence: true

scope :order_desc, -> {order(created_at: :desc)}
before_save :censorship

def censorship
    self.content.gsub("spoiler","")
end

#scope :censorship, -> {where('content LIKE ?', "spoiler")}

end
