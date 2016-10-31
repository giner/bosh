require File.expand_path('../../../spec/shared/spec_helper', __FILE__)

require 'cli'
require 'bosh/cli/commands/micro'
require 'fakefs/spec_helpers'

def spec_asset(filename)
  File.expand_path("../assets/#{filename}", __FILE__)
end

RSpec.configure do |c|
  c.fail_fast = true if ENV['BOSH_DEPLOYER_DIR']
end
