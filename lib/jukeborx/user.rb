module Jukeborx
  class User < ActiveRecord::Base

    def to_json(options=nil)
      {
        first_name:  self.first_name,
        last_name:   self.last_name,
        email:   self.email,
      }.to_json
      #can insert ,null :false so can't save info without a field filled
    end
  end
end
