class EmployeeAssignmentSerializer
  include FastJsonapi::ObjectSerializer
  set_type :assignment
  
  attribute :store do |object|
    object.store.name
  end

  attribute :pay_grade do |object|
    object.pay_grade.level
  end

  attributes :start_date, :end_date

end