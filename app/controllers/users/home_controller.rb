module Users
  class HomeController < ApplicationController
    def index; end

    def analyze
      # https://vivendodedorama.fun/oficial/
      WhoisInformation::Analyze.call(searched_url: permitted_params[:searched_url], ip: request.ip)
      .on_success { |result| binding.irb; redirect_to users_domain_lookup_path(result[:lookup]) }
      .on_failure { |result| render :results, errors: result[:message] }
    end

    private

    def permitted_params
      params.permit(:searched_url)
    end
  end
end
