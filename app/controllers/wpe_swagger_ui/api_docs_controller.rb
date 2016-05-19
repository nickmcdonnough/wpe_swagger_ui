module WpeSwaggerUi
  class ApiDocsController < ApplicationController
    def api_docs
      api_version = request.path[/\w+/]
      docs_path = "#{Rails.root}/docs/#{api_version}/swagger.yml"
      swagger_docs  = YAML.load File.read(docs_path)
      @swagger_json = JSON.dump(swagger_docs).html_safe
      render 'wpe_swagger_ui/wpe_swagger_ui'
    end
  end
end
