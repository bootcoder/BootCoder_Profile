module GiggleHelper
  def random_giggle_image_tag(**options)
    root     = Rails.root.join('app','assets','images')
    glob     = root.join('giggles','**','*.{png,jpg,jpeg,gif,webp,svg}')
    files    = Dir.glob(glob.to_s, File::FNM_CASEFOLD)
    logical  = files.sample&.sub(root.to_s + '/', '') || 'giggles/giggle_0.png'

    image_tag logical,
              { alt: File.basename(logical, '.*'),
                class: 'image-meme image-responsive max-500 pad-5P' }.merge(options)
  end

  def giggle_images(**options)
    root     = Rails.root.join('app','assets','images')
    glob     = root.join('giggles','**','*.{png,jpg,jpeg,gif,webp,svg}')
    files    = Dir.glob(glob.to_s, File::FNM_CASEFOLD)
    result   = ['giggles/giggle_0.png']
    files.each do |file|
      next if file.include?('giggle_0')
      result << file.sub(root.to_s + '/', '') || 'giggles/giggle_0.png'
    end
    result
  end
end
