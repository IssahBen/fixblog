module ApplicationHelper

    def gravatar_for(user,size=80)
        email=user.email.downcase
        hash = Digest::MD5.hexdigest(email)
       
        url=image_src = "https://www.gravatar.com/avatar/#{hash}?s=#{size}"
        image_tag(url,alt: user.name, class: "rounded mx-auto d-block")
    end

   

end
