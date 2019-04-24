module Shutils
  class RemarkSerializer < ::BaseSerializer
    attributes :id, :body, :remarkable_type, :remarkable_id, :updated_at

    def updated_at
      object.updated_at.strftime('%Y-%m-%d %H:%M:%S')
    end
  end
end