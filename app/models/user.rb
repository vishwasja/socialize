class User < ActiveRecord::Base

	attr_reader :name, :fb_id, :email, :status

  def self.koala(auth)
    access_token = auth['token']
    facebook = Koala::Facebook::API.new(access_token)
    facebook.get_object("me?fields=name,picture,email")
  end

end
