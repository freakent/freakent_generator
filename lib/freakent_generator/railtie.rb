require "rails/generators/rails/scaffold/scaffold_generator"

module FreakentGenerator
  class Railtie < ::Rails::Railtie
    config.app_generators do |g|
      g.templates.unshift File::expand_path('../../templates', __FILE__)
      # print g.templates
    end

    Rails::Generators::ScaffoldGenerator.hook_for :policies, as: :pundit ,type: :boolean
  end
end
