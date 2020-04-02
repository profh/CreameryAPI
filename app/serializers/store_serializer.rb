class StoreSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  attribute :address do |object|
    "#{object.street}, #{object.city}, #{object.state} #{object.zip}"
  end
  
  attribute :num_current_employees do |object|
    object.assignments.current.count
  end
  
  attribute :list_current_employees do |object|
    object.assignments.current.map do |assignment|
      assignment.employee.name
    end
  end
end
