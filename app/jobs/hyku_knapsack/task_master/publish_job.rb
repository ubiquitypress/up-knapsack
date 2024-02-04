# frozen_string_literal: true

module HykuKnapsack
  module TaskMaster
    class PublishJob < ApplicationJob
      discard_on ArgumentError

      def perform(type, action, json)
        HykuKnapsack::TaskMaster::PublishService.new(type, action, json).perform
      end
    end
  end
end
