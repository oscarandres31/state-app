class ApplicationController < ActionController::Base
  before_action :set_layout

  private

   def set_layout
     if current_user&.manager?
       self.class.layout 'application'
     elsif devise_controller? && (action_name == 'new' || action_name == 'create' || action_name == 'edit' || action_name == 'update')
       self.class.layout 'login'
     elsif controller_path == "assistants" && ["new", "create", "update", "edit"].include?(action_name)
       self.class.layout 'visitants'
     else
       self.class.layout 'application'
     end
   end

end