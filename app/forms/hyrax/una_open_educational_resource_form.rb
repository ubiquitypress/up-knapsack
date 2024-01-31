# frozen_string_literal: true
module Hyrax
  class UnaOpenEducationalResourceForm < Hyrax::Forms::WorkForm
    include Hyrax::DOI::DataCiteDOIFormBehavior

    include Hyku::Schema::WorkForm
    include Hyku::Schema::Hyrax::FormFields(:una_open_educational_resource)

    self.model_class = ::UnaOpenEducationalResource
  end
end
