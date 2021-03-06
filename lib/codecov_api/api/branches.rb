require_relative 'base.rb'

module CodecovApi
  module Api
    class Branches < Base
      def initialize(owner, repo)
        @owner = owner
        @repo = repo
      end

      def list
        get_request('/branches')
      end

      def get(branch)
        get_request("/branch/#{branch}")
      end

      def delete(branch)
        puts "#{branch} should be deleted but..."
        raise 'delete method not implemented'
      end

      protected

      def base_path
        "/#{@owner}/#{@repo}"
      end
    end
  end
end
