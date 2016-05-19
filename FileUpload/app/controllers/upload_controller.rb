require 'fileutils'

class UploadController < ApplicationController
  def index
  end

  def upload_process

    file = params[:upfile]

    upload_original_filename = file.original_filename
    upload_file_content_type = file.content_type
    upload_file_size = file.size

    perms = ['.jpg', '.jpeg', '.gif', '.png']

    if !perms.include?(File.extname(upload_original_filename).downcase)
      result = 'Only supported image file'
    elsif file.size > 1.megabyte
      result = 'Plase upload under 1MB'
    else



      new_resource = Resource.create(:file_name => upload_original_filename,
                                     :content_type => upload_file_content_type,
                                     :file_size => upload_file_size)
      # Create Storage Directory
      resource_folder_url = "storage/#{new_resource.id}/"
      resource_folder = "public/" + resource_folder_url
      resource_url = resource_folder + "#{upload_original_filename}"
      resource_url_db = resource_folder_url + "#{upload_original_filename}"

      FileUtils.mkdir_p resource_folder

      File.open(resource_url, 'wb') do |f|
        f.write(file.read)
      end

      new_resource.resource_url = request.base_url + "/" + resource_url_db
      new_resource.save
      result = "#{upload_original_filename}을 업로드하였습니다."
    end

    render plain: result
  end

end
