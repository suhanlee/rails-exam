class UploadController < ApplicationController
  def index

  end

  def create
    file = params[:filename]
    name = file.original_filename
    perms = ['.mp4']

    if !perms.include?(File.extname(name).downcase)
      # err
    end

    File.open("public/upload/#{name}", 'wb') do |f|
      f.write(file.read)
    end

    base_url = request.base_url
    file_url = base_url + "/" + "/upload/#{name}"
    file_size = File.size("public/upload/#{name}")

    @resource = Resource.create(:filename => name, :content_type => 'video/mp4', :saved_url => file_url, :filesize => file_size)
  end
end
