require 'net/http'
require 'json'
require 'uri'
require 'base64'

module Jekyll
  class FetchReadmeTag < Liquid::Tag
    def initialize(tag_name, repo, tokens)
      super
      @repo = repo.strip
      @token = ENV['GITHUB_TOKEN']  # Fetch the token from an environment variable
    end

    def render(context)
      uri = URI.parse("https://api.github.com/repos/#{@repo}/readme")
      request = Net::HTTP::Get.new(uri)
      request['Authorization'] = "token #{@token}" if @token  # Add the token to the header if it exists

      response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) do |http|
        http.request(request)
      end

      json = JSON.parse(response.body)

      if json["content"]
        markdown = Base64.decode64(json["content"])
        # Render the markdown content
        Kramdown::Document.new(markdown).to_html
      else
        "Error: README file not found."
      end
    rescue => e
      "Error: #{e.message}"
    end
  end
end

Liquid::Template.register_tag('fetch_readme', Jekyll::FetchReadmeTag)
