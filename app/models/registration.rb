class Registration < ActiveRecord::Base
  store :type_fields, accessors: [:received_date]

  attr_accessible :received_date

  # validates_date :received_date
end