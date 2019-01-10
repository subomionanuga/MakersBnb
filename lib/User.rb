require 'data_mapper'

class User
  include DataMapper::Resource

  property :id, Serial
  property :name, String 
  property :email, String 
  property :password, BCryptHash

  def self.authenticate(email, password)
    user = first(email: email)
    return nil unless user
    if user.password == password
      user
    else
      nil
    end  
    

  end
  
end 

