class User

  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :email

  validates :email, :presence => true,
            :length => {:minimum => 3, :maximum => 100},
            :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}

  def initialize(attributes=nil)
      if attributes
        attributes.each do |name, value|
          send("#{name}=", value)
        end
      else
        super()
      end
    end

end