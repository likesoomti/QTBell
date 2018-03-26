class User < ApplicationRecord
  has_many :board
  # Include default devise modules. Others available are:
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable, :omniauthable
    
    # self.find_for_oauth(SNS 토큰, current_user)
    def self.find_for_oauth(auth, signed_in_resource = nil)
      sns_user = SnsUser.find_for_oauth(auth)  
      user = signed_in_resource ? signed_in_resource : 
      
      sns_user.user
      # 유저가 없으면 이메일 찾아 유저 값있는지 확인 
      if user.nil? 
        email = auth.info.email
        user = User.where(:email => email).first
        # 유저이메일에 해당하는 아이디가 없으면 하나 db에 만들어놓는다. 
        unless self.where(email: auth.info.email).exists?
        # 유저가 그럼에도 없음 값을 넣어준다
          if user.nil?
            user = User.new
            user.email = auth.info.email
            user.profile_image = auth.info.image
            user.password = Devise.friendly_token[0,20]
            user.save!
          end
        end
      end  
    if sns_user.user != user
      sns_user.user = user
      sns_user.save!
    end
    user
  end
end
