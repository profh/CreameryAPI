class EmployeeCurrentAssignmentSerializer
  include FastJsonapi::ObjectSerializer
  set_type :assignment
  
  attribute :store do |object|
    object.store.name
  end

  attribute :pay_grade do |object|
    object.pay_grade.level
  end

  attribute :as_of do |object|
    object.start_date.strftime("%B %d, %Y")
  end

  # attribute :name do |object|
  #   object.name
  # end 

  # attribute :phone do |object|
  #   ActionController::Base.helpers.number_to_phone(object.phone)
  # end

  # attribute :age do |object|
  #   object.age
  # end

end