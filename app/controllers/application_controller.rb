class ApplicationController < ActionController::API
    #if Rails.env.production?
        rescue_from StandardError, with: :rescue_500　
        rescue_from ActionController::RoutingError, with: :rescue_404
        rescue_from ActiveRecord::RecordNotFound, with: :rescue_404
        rescue_from ActionController::UnknownFormat, with: :rescue_404
        rescue_from ActionView::MissingTemplate, with: :rescue_404
    #end
    
    def rescue_404(error = nil)
        Rails.logger.warn(
        "message: 404 NotFound #{request.url},
        #{error&.message},
        #{error&.class}"
        )
        render json: { message: 'not found', status: 404 }
    end
    def rescue_500(error = nil)
        Rails.logger.error(
        "message: 500 InternalError #{request.url},
        #{error&.message},
        #{error&.class}"
        )
        render json: { message: 'internal error', status: 500 }
    end
end
