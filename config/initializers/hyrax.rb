# frozen_string_literal: true

# Register any Hyrax related settings and add new curation concerns (works)
# rubocop:disable Metrics/BlockLength
::Hyrax.config do |config|
  config.register_curation_concern :una_open_educational_resource

  # FIXME: This setting is global and affects all tenants
  config.work_requires_files = false
end
