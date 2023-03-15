require "test_helper"

class AssignmentTest < ActiveSupport::TestCase
  should belong_to(:course)
  should belong_to(:faculty)
end
