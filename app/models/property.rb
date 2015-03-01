class Property < ActiveRecord::Base
  self.table_name = 'ipam__property_control'
  self.primary_key = "id"
  has_one :entity

  %w[ serial pc_number ].each do |k|
    scope "find_#{k}", lambda { |v|
      where("context->'#{k}'=?",v)
    }
    scope "find_#{k}_like", lambda { |v|
      where("context->'#{k}'~?",v)
    }
    
  end
  
  def serial
    self.context['serial']
  end
  
  def pc_number
    self.context['pc_number']
  end
  
  def date_of_purchase
    self.created_at
  end
  
end
