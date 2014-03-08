if Futurizer.detected? :actionpack => [">= 2.2.1", "< 3"], :ruby => ">= 2"
  Futurizer.require_dependency "action_controller"

  module ActionController
    class Base
      private

      def log_processing_for_parameters
        parameters = respond_to?(:filter_parameters, true) ? filter_parameters(params) : params.dup
        parameters = parameters.except!(:controller, :action, :format, :_method)
        logger.info "  Parameters: #{parameters.inspect}" unless parameters.empty?
      end
    end
  end
end
