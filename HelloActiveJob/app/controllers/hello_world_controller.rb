class HelloWorldController < ApplicationController
  def index
    HelloWorldJob.perform_later "Hello World"
  end
end
