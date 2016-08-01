class SponsoredPosts < ActiveRecord::Base
  belongs_to :topic, :posts
end
