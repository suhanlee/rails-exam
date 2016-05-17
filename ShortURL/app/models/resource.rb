class Resource < ActiveRecord::Base
  alias_attribute :original_url, :orgianl_url
end
