class AjaxController < ApplicationController
  def index

  end

  def time
    @time = Time.now.to_s
  end

  def search
    @books = Book.all
  end

  def result
    sleep(2)
    @books = Book.where(publish: params[:publish])

  end
end
