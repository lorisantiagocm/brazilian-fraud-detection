module Users
  class DomainLookupsController < ApplicationController
    def show
      binding.irb
      @domain_lookup = DomainLookup.find_by(id: params[:id])
    end
  end
end
