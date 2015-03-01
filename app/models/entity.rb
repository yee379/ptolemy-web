class Entity < ActiveRecord::Base
  self.table_name = 'entity__meta'
  self.primary_key = "id"
  # has_one :replacement

  %w[ device model ].each do |k|
    scope "find_#{k}", lambda { |v|
      where("context->'#{k}'=?",v)
    }
  end
  

  def device
    self.context['device']
  end

  def model
    self.context['model']
  end
  
  def relative_position
    self.context['relative_position']
  end

  def entity_type
    self.context['type']
  end

  def serial
    self.data['serial']
  end

  
end
