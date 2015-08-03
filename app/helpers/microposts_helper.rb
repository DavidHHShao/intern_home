module MicropostsHelper


  # Returns the preview link for the given micropost.
  def preview_link_for(micropost)
    urls = URI.extract(micropost.content)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

end
