# frozen_string_literal: true

module HykuKnapsack
  module TaskMaster
    module AccountBehavior
      extend ActiveSupport::Concern

      include HykuKnapsack::TaskMaster::Publishable

      def upsertable?
        task_master_uuid.present?
      end

      def task_master_type
        "tenant"
      end

      def task_master_uuid
        tenant
      end

      def to_task_master
        {
          uuid: task_master_uuid,
          cname: cname,
          gcloud_zone: ENV["GCLOUD_ZONE"],
          google_project_id: ENV["GCLOUD_PROJECT_ID"]
        }
      end
    end
  end
end
