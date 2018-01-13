module PlayersHelper
  def image_or_message(image_id, message)
    if image_id
      cl_image_tag("#{image_id}.jpg", :width => 300, :height => 450, :crop => :fill)
    else
      content_tag :div, class: 'photo-replacement' do
        content_tag :span, class: 'exception' do
          message
        end
      end
    end
  end

  def field_or_box(value)
    return value unless value.nil?
    content_tag :span, class: 'missing-data' do
      "\xa0"
    end
  end

  def datetime_or_box(value)
    value ? l(value, format: '%d %B %Y') : field_or_box(value)
  end

  def standard_footer
    content_tag :footer do
      l last_updated, format: 'Last updated at %H:%m on %d %B %Y'
    end
  end

  def last_updated
    @last_updated ||= Player.maximum(:updated_at)
  end
end
