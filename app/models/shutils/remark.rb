module Shutils
  class Remark < ApplicationRecord
    validate :owner_valid

    private

    def owner_valid
      klass = remarkable_type.constantize rescue nil
      if !klass
        errors.add(:remarkable_type_invalid, " type not existed")
      end
      if !klass.find_by_id(remarkable_id)
        errors.add(:remarkable_id_invalid, " record not existed")
      end
    end
  end
end
