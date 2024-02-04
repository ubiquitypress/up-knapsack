# A note of all quick 'hacks' that are needed to be fixed for production release

* Gem's are still being included in the hyrax-webapp folder, we need to add the gem bundle-inject and make sure its working
* SOLR overrides
* SMTP configuration

* UNA's config should be in a gem, but for now we're doing it here so we can test it

* Fix workBase in schema plugin to reference this include back
```
      #TODO: re-add this
      #include Hyrax::Autopopulation::AutopopulationProperty

      #TODO: re-add Behavior
      #include HykuKnapsack::TaskMaster::WorkBehavior

```

