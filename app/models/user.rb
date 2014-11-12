class User < ActiveRecord::Base

	attr_accessor :fb_id

  def self.koala(auth)
    access_token = auth['token']
    facebook = Koala::Facebook::API.new(access_token)
    user_info = facebook.get_object("me?fields=name,picture,email")
    fb_id = user_info['id']
    
    user_info
  end

end
