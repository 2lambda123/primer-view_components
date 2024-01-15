# frozen_string_literal: true

require "test_helper"
require "webmock/minitest"

class GHAFixTest < ActionDispatch::SystemTestCase
  setup do
    WebMock.disable_net_connect!(allow_localhost: true)
    ENV["TZ"] = "Asia/Taipei"
  end

  # Write tests to fix the specific issue causing the failed run
  def test_fix_failed_run
    # Write test code here
  end
end
