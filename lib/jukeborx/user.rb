module Jukeborx
  class User < ActiveRecord::Base

    def to_json(options=nil)
      {
        first_name:  self.first_name,
        last_name:   self.last_name,
        email:   self.email,
      }.to_json
    end
  end
end
