module ApplicationHelper
  def active_tab(controller)
    controller_name == controller ? 'active' : ''
  end
end
