# frozen_string_literal: true
module Hyrax
  class UnaOpenEducationalResourceForm < Hyrax::Forms::WorkForm
    include Hyrax::DOI::DataCiteDOIFormBehavior

    include HykuKnapsack::WorkForm
    include Hyku::Plugin::Schema::Yaml::Hyrax::FormFields(:una_open_educational_resource)

    self.model_class = ::UnaOpenEducationalResource
  end
end
