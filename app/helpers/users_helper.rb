module UsersHelper

  #Return the Gravatar for the given user.
  def gravatar_for(user, options = { size: 80})
    size = options[size]
    gravatar_id = Digest::MD5::hexdigest(user.email)
    gravatar_url = "htpps://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, class: "gravatar")
  end
end
