# frozen_string_literal: true
module Hyrax
  class UnaOpenEducationalResourcePresenter < Hyrax::WorkShowPresenter
    include ::Hyku::Pluin::Schema::Yaml::Presenter(:una_open_educational_resource)
    include ::HykuKnapsack::WorkPresenterBehavior
    include ::HykuKnapsack::PresenterDelegatable
  end
end
