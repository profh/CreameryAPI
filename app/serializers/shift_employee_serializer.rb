class ShiftEmployeeSerializer
  include FastJsonapi::ObjectSerializer
  set_type :employee

  attribute :name do |object|
    object.name
  end

  attribute :role do |object|
    object.role.capitalize
  end
  
  attribute :pay_grade do |object|
    object.current_pay_grade
  end

  attribute :pay_rate do |object|
    object.current_pay_rate
  end
end