# frozen_string_literal: true

require "test_helper"
require "webmock/minitest"

WebMock.disable_net_connect!(allow_localhost: true)

# Add gha_fix_test.rb to relevant files list
relevant_files << "gha_fix_test.rb"
require "gha_fix_test"

ENV["TZ"] = "Asia/Taipei"
