module ApplicationHelper
  def app_name
    Rails.application.class.module_parent.name
  end

  def registration_edit_view?
    controller_name == 'registrations' && action_name == 'edit'
  end
end
