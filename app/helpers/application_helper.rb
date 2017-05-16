module ApplicationHelper
  def auth_helper
    sign_up_link = content_tag(:li, link_to('Sign up', new_user_registration_path, class: 'nav-link'), class: 'nav-item')
    sign_in_link = content_tag(:li, link_to('Sign in', new_user_session_path, class: 'nav-link'), class: 'nav-item')
    sign_out_link = content_tag(:li, link_to('Sign out', destroy_user_session_path, method: :delete, class: 'nav-link'), class: 'nav-item')
    if current_user
      safe_join([sign_out_link])
    else
      safe_join([sign_up_link, sign_in_link])
    end
  end
end
