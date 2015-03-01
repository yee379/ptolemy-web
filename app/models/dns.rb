class Dns < ActiveRecord::Base
  self.table_name = 'ipam__dns'
  self.primary_key = 'id'
end
