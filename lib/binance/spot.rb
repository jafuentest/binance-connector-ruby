# frozen_string_literal: true

require 'binance/session'
require 'binance/authentication'
require 'binance/utils/validation'
require 'binance/utils/url'
require 'binance/error'
require 'binance/spot/c2c'
require 'binance/spot/convert'
require 'binance/spot/dci'
require 'binance/spot/fiat'
require 'binance/spot/loan'
require 'binance/spot/margin'
require 'binance/spot/market'
require 'binance/spot/mining'
require 'binance/spot/simple_earn'
require 'binance/spot/stream'
require 'binance/spot/subaccount'
require 'binance/spot/trade'
require 'binance/spot/wallet'
require 'binance/spot/websocket'

module Binance
  # Spot class includes the following modules:
  # - Blvt
  # - C2C
  # - Convert
  # - Fiat
  # - Futures
  # - Loan
  # - Margin
  # - Market
  # - Mining
  # - SimpleEarn
  # - Stream
  # - Subaccount
  # - Trade
  # - Wallet
  # @see https://developers.binance.com/en
  class Spot
    include Binance::Spot::C2C
    include Binance::Spot::Convert
    include Binance::Spot::DCI
    include Binance::Spot::Fiat
    include Binance::Spot::Loan
    include Binance::Spot::Margin
    include Binance::Spot::Market
    include Binance::Spot::Mining
    include Binance::Spot::SimpleEarn
    include Binance::Spot::Stream
    include Binance::Spot::Subaccount
    include Binance::Spot::Trade
    include Binance::Spot::Wallet

    def initialize(key: '', secret: '', **kwargs)
      @session = Session.new kwargs.merge(key: key, secret: secret)
    end
  end
end
