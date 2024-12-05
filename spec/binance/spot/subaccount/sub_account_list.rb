# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Binance::Spot::Convert, '#sub_account_list' do
  let(:path) { '/sapi/v1/managed-subaccount/info' }
  let(:body) { fixture('response.json') }
  let(:status) { 200 }

  before do
    stub_binance_sign_request(:get, path, status, body)
  end

  it 'should return investors managed sub-account list' do
    spot_client_signed.sub_account_list
    expect(send_a_request_with_signature(:get, path)).to have_been_made
  end
end