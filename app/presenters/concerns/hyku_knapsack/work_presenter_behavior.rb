# frozen_string_literal: true

# General bahaviors to be added to all works
module HykuKnapsack
  module WorkPresenterBehavior
    extend ActiveSupport::Concern

    include HykuKnapsack::PersonOrOrganizationPresenterBehavior

    included do
      include Hyrax::DOI::DOIPresenterBehavior
      include Hyrax::DOI::DataCiteDOIPresenterBehavior
    end
  end
end
