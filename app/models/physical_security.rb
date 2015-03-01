class PhysicalSecurity < ActiveRecord::Base
  @@security = Hash[
    'secure' => 2,
    'semi-secure' => 1,
    'insecure' => 0,
    'unknown' => -1
  ]
  
  def security_level
    e = @@security[self.environment]
    c = @@security[self.cabinet]
    t = e + c
    if e == -1 or c == -1
      return 'unknown'
    elsif t >= 3
      return 'secure'
    elsif t > 1
      return 'semi-secure'
    else
      return 'insecure'
    end
  end
  
end
