# frozen_string_literal: true

module Binance
  class Spot
    # all savings endpoints
    # @see https://binance-docs.github.io/apidocs/spot/en/#simple-earn-endpoints
    module SimpleEarn
      # Get Flexible Product Position (USER_DATA)
      #
      #  GET /sapi/v1/simple-earn/flexible/position
      #
      # @param kwargs [Hash]
      # @option kwargs [String] :asset
      # @option kwargs [String] :productId
      # @option kwargs [Integer] :current Current query page. Default: 1, Min: 1
      # @option kwargs [Integer] :size Default: 10, Max: 100
      # @option kwargs [Integer] :recvWindow The value cannot be greater than 60000
      # @see https://binance-docs.github.io/apidocs/spot/en/#lending-account-user_data
      def simple_earn_flexible_position(**kwargs)
        @session.sign_request(:get, '/sapi/v1/lending/union/account', params: kwargs)
      end
    end
  end
end
