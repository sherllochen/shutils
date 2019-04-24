require_dependency "shutils/application_controller"

module Shutils
  module Api::V1
    class RemarksController < ::Api::V1::BaseController
      before_action :set_remark, only: [:update, :destroy]

      def create
        authorize Shutils::Remark
        @remark = Shutils::Remark.create!(remark_param.except(:remarkable_type).merge(remarkable_type: remark_param[:remarkable_type].classify))
        render json: @remark
      end

      def update
        authorize @remark
        @remark.update!(remark_param.slice(:body))
        render json: @remark
      end

      private

      def remark_param
        params.require(:remark).permit(:remarkable_type, :remarkable_id, :body)
      end

      def set_remark
        @remark = Shutils::Remark.find_by_id(params[:id])
        if !@remark
          skip_authorization
          raise ArgumentError.new('记录不存在')
        end
      end
    end
  end
end