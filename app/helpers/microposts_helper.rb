module MicropostsHelper
  def process_content( url)

      info = LinkThumbnailer.generate(url)

      content_tag :span, :class=> "content" do
         content_tag(:h3, :class=> "content") do
            link_to(info.title, url)
         end
      end

      content_tag(:span,  info.description, class: "content")
      #
     # content_tag(:span,  favicon_link_tag(info.favicon), class: "content")

      #if LinkThumbnailer.generate(url).images.size > 0
          #  content_tag(:span,  image_tag(info.images.first.src.to_s, size: "200"), class: "content")
     # end

  end
end










