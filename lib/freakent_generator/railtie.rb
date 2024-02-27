module FreakentGenerator
  class Railtie < ::Rails::Railtie
    config.app_generators do |g|
      g.templates.unshift File::expand_path('../../templates', __FILE__)
      print g.templates
    end
  end
end
