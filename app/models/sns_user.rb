class SnsUser < ApplicationRecord
  belongs_to :user 

  # add
  # 유효성 설정 
  validates_presence_of :uid, :provider
  validates_uniqueness_of :uid, :scope => :provider
  # uid 값 넣어주기
  def self.find_for_oauth(auth)
    find_or_create_by(uid: auth.uid, provider: auth.provider)
  end

endr