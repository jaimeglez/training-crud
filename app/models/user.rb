class User < ActiveRecord::Base
  before_create :record_available






  private

    def record_available
      self.available = true
    end
end
