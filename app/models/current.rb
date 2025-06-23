# class that hold per-request global state
class Current < ActiveSupport::CurrentAttributes
  attribute :user
end
