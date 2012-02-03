class User < ActiveRecord::Base
  before_create :record_available

  def self.search(search)
    if search
      find(:all,:conditions => ['name LIKE ? and available = ?', "%#{search}%",true])
    else
      find(:all,:conditions => ['available = ?',true])
    end
  end


  private

    def record_available
      self.available = true
    end
end
