class Task < ActiveRecord::Base
	belongs_to :user
	has_many :tags

	def completed?
		completed_at.blank?
	end
end
