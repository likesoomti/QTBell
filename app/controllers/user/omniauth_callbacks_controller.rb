class User::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # 프로바이더 값을 가져온다 
  # 클래스를 이름마다 생성
  # user 값과 auth 값을 보내줌 

  # 페이스북 경로 
  def facebook
    # User 모델에 설정된 find_for_oauth 호출
    @user = User.find_for_oauth(request.env["omniauth.auth"], current_user)
    # 유저 값이 존재하면 로그인 
    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication
    else
    # 아니라면 유저 등록 페이지 
      session["devise.facebook_data"] = env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

  # 로그인 이후 경로 설정 
  def after_sign_in_path_for(resource)
    @user = User.find(current_user.id)
    if @user.persisted?
      puts "로그인 이후 경로 설정하는 곳인가요?"
    else
      puts "로그인 이후 경로 설정하는 곳인가요?"
    end
  end
end