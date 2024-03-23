class DepartmentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name

  attribute :faculty do |object|
    object.faculty.active.alphabetical.map do |faculty|
      DepartmentFacultySerializer.new(faculty).serializable_hash
    end
  end
end
