class Ribbit < ApplicationRecord
		attr_accessor :content, :user_id

		#default_scope order: "created_at DESC"
		default_scope {order('created_at DESC')}

		belongs_to :user

		validates :content, length: { maximum: 140 }
end
