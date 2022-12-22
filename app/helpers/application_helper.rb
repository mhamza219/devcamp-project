module ApplicationHelper

		
	def login_helper(style = ' ')
      if current_user.is_a?(GuestUser)
        (link_to "login", new_user_session_path, class: 'nav-link') + 
        " ".html_safe +
        (link_to "register", new_user_registration_path, class: 'nav-link')
      else 
        link_to "logout", destroy_user_session_path, method: :delete, class: 'nav-link'
        
      end 

	end
end
 