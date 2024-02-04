# frozen_string_literal: true
module Hyrax
  class UnaOpenEducationalResourcesController < ApplicationController
    include Hyrax::WorksControllerBehavior
    include Hyrax::BreadcrumbsForWorks
    include Hyku::Plugin::Schema::Yaml::WorksControllerBehavior

    self.curation_concern_type = ::UnaOpenEducationalResource
    self.show_presenter = Hyrax::UnaOpenEducationalResourcePresenter
  end
end
