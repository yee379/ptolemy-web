class Replacement < ActiveRecord::Base
  belongs_to :entity
  belongs_to :hardware
  belongs_to :property
  belongs_to :replacement_hardware, class_name: "Hardware", :foreign_key => 'replacement_hardware_id'  
  
  scope :old, where( 'updated_at < ?', Time.now - (2600*24*14) )
  
  # scope :device_like, lambda { |v| joins(:entity).where( entity.device => regexp ?, v  }
  
  def replacement_price
    if self.replacement_hardware and self.replacement_hardware.price and self.quantity
      self.replacement_hardware.price * self.quantity
    end
  end
  
  def replacement_date( refresh_time=5.years, now=Time.now )
    cycle = now
    if self.property and self.property.date_of_purchase
      cycle = self.property.date_of_purchase + refresh_time
    else
      cycle = now + refresh_time
    end

    if self.hardware and self.hardware.end_of_support
      if self.hardware.end_of_support < cycle
        # stupid time and date's
        cycle = self.hardware.end_of_support.to_time
      end
    end
    
    cycle
  end
    
  def replacement_time_delta( bin=1.year, refresh_time=5.years, now=Time.now )
    t = self.replacement_date(refresh_time=refresh_time,now=now)
    logger.error("T %s %s" % [t,now])
    u = t - now
    ( u.to_f / bin.to_f ).floor
  end
  
end
