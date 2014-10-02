module ApplicationHelper
  include CustomRequestConfig

  def user_agent_tag
    "Your Browser is #{user_agent_name}"
  end
end
