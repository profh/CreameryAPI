class ShiftSerializer
  include FastJsonapi::ObjectSerializer
  
  attribute :store do |object|
    ShiftStoreSerializer.new(object.store).serializable_hash
  end

  attribute :employee do |object|
    ShiftEmployeeSerializer.new(object.employee).serializable_hash
  end

  attributes :date

  attribute :start_time do |object|
    object.start_time.strftime("%H:%M")
  end

  attribute :end_time do |object|
    object.end_time.strftime("%H:%M")
  end

  attribute :jobs_worked do |object|
    object.jobs.alphabetical.map do |job|
      job.name
    end
  end

end
