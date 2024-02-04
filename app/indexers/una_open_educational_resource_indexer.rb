# frozen_string_literal: true
# Generated via
#  `rails generate hyrax:work UnaOpenEducationalResource`
class UnaOpenEducationalResourceIndexer < Hyrax::WorkIndexer
  include Hyku::Plugin::Schema::Yaml::Hyrax::Indexer(:una_open_educational_resource)
  include Hyrax::IndexesBasicMetadata
  include Hyrax::IndexesLinkedMetadata
end
