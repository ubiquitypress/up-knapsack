module HykuKnapsack
  class Engine < ::Rails::Engine
    isolate_namespace HykuKnapsack

    initializer "load_features" do
      # Features from config/features.rb in your engine are merged with
      # any application features.
      Flipflop::FeatureLoader.current.append(self)
    end

    initializer :append_migrations do |app|
      # only add the migrations if they are not already copied
      # via the rake task. Allows gem to work both with the install:migrations
      # and without it.
      if !app.root.to_s.match(root.to_s) &&
          app.root.join('db/migrate').children.none? {|path| path.fnmatch?("*.hyku_knapsack.rb")}
        config.paths["db/migrate"].expanded.each do |expanded_path|
          app.config.paths["db/migrate"] << expanded_path
        end
      end
    end

    config.before_initialize do
      config.i18n.load_path += Dir["#{config.root}/config/locales/**/*.yml"]
    end

    config.after_initialize do
      my_engine_root = HykuKnapsack::Engine.root.to_s
      paths = ActionController::Base.view_paths.collect{|p| p.to_s}
      
      # Remove the Hyrax Orcid JSON Actor as we have our own - this should not be namespaced
      Hyrax::CurationConcern.actor_factory.middlewares.delete(Hyrax::Actors::Orcid::JSONFieldsActor)

      # This is the opposite of what you usually want to do. Normally app views override engine views
      # but in our case things in the Knapsack override what is in the application
      paths = [my_engine_root + '/app/views'] + paths
      ActionController::Base.view_paths = paths.uniq
      ::ApplicationController.send :helper, HykuKnapsack::Engine.helpers
    end
  end
end
