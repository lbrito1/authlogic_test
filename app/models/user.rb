class User < ApplicationRecord
  acts_as_authentic do |c|
    c.login_field = :id
  end

  def self.find_by_id(id)
    find_by(id: id)
  end
end
