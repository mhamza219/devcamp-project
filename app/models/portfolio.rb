class Portfolio < ApplicationRecord
	has_many :technologies
	has_one_attached :images
	accepts_nested_attributes_for :technologies, 
								reject_if: 	:all_blank, allow_destroy: true

	

validates_presence_of :title, :subtitle, :body, :images


def self.ruby
	where(subtitle: "Ruby on rails")
end
scope :angular, -> {where(subtitle: "Angular")}

end
