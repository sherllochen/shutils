module Shutils::Concerns
  module Remarkable
    extend ActiveSupport::Concern

    included do
      has_one :remark, class_name: 'Shutils::Remark', as: :remarkable
    end
  end

  module ManyRemarkable
    extend ActiveSupport::Concern

    included do
      has_many :remarks, class_name: 'Shutils::Remark', as: :remarkable
    end
  end
end