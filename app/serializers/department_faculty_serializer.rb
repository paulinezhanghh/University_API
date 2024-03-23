class DepartmentFacultySerializer
    include FastJsonapi::ObjectSerializer
    set_type :faculty
    attributes :name, :rank

    attribute :number_of_courses do |object|
        object.course.count
    end

end