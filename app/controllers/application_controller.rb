class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include CurrentUserConcern
  include DefaultPageContent



before_action :set_copyright
	def set_copyright

		@copyright = OctascaleViewTool::Renderer.copyright 'Octascale' , 'All right reserve'
	end
	module OctascaleViewTool
		class Renderer
			def self.copyright(name, msg)
				"&copy; #{Time.now.year} | <b> #{name}</b> #{msg}".html_safe
			end
		end
	end

end