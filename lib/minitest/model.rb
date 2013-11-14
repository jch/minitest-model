require "minitest/model/version"

module MiniTest
  module Model
    ########### ActiveModel::Validations

    # Public: assert `record` is valid. If optional argument `attribute` is
    # given, only assert that no errors are on that attribute.
    #
    # See test/test.rb for sample usage
    #
    def assert_valid(record, attribute = nil)
      if attribute
        record.valid?
        errors = record.errors[attribute]
        assert errors.blank?, "Validation errors on #{attribute}:\n" + errors.join("\n")
      else
        assert record.valid?, "Validation errors:\n" + record.errors.full_messages.join("\n")
      end
    end

    # Public: the inverse of assert_valid
    def refute_valid(record, attribute = nil)
      valid = record.valid?
      if attribute
        errors = record.errors[attribute]
        refute errors.empty?, "Expected validation error on #{attribute}"
      else
        refute valid, "Expected validation errors"
      end
    end
  end
end
