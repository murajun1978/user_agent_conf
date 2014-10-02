require 'ostruct'
require 'forwardable'

module CustomRequestConfig
  extend ActiveSupport::Concern
  extend Forwardable

  def_delegator :configuration, :user_agent

  def configuration
    @configuration ||= OpenStruct.new
  end

  def configure
    yield configuration
  end

  def chrome?
    user_agent.include? 'Chrome'
  end

  def ie?
    user_agent.include? 'MSIE'
  end

  def user_agent_name
    return 'IE'     if ie?
    return 'Chrome' if chrome?
  end
end
