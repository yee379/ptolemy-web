class TechcoordPort < ActiveRecord::Base
  # these queries take a while, refernce to config/database.yaml
  # establish_connection "long_connection_#{Rails.env}"
  include Ports
end
