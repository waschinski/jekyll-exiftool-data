module Jekyll
  module ExifData
    require 'exiftool'
    module ExifDataFilter

      # Read exif using exifr
      def exif(input, exiftag)
        exif = Exiftool.new(input)
        answer = exif[exiftag]
        if(answer == nil)
          return ""
        else
          return answer
        end
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::ExifData::ExifDataFilter)