# frozen_string_literal: true

module HykuKnapsack
  module NoteBehavior
    extend ActiveSupport::Concern

    included do
      property :note, predicate: ::RDF::Vocab::MODS.note, multiple: true do |index|
        index.as :stored_searchable
      end
    end
  end
end
