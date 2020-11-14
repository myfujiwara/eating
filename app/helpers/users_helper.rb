module UsersHelper

  def current_user
    if @current_user.nil?
       @current_user = User.find_by(id: session[:user_id])
    else
       @current_user
    end
  end

  def user_signed_in?
    current_user.present?
  end

  def image_url(user)
    if user.image.blank?
      "https://dummyimage.com/200x200/000/fff"
    else
      "/users/#{user.image}"
    end
  end
end
