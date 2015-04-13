require_relative "exists/version"

require 'null_question'

class Object
  def exists
    null? ? nil : self
  end
end
