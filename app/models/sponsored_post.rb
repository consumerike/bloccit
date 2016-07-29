class SponsoredPost < ActiveRecord::Base
  belongs_to :topic, :posts
end
