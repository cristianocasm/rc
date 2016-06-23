module Matchers
  extend RSpec::Matchers::DSL
  include Capybara::DSL

  matcher :have_success_message do |notice|
    match do |page|
      expect(page).to have_css(".alert-success", text: notice)
    end

    failure_message do |page|
      "expected #{page.text.inspect} to have success message #{notice.inspect}"
    end

    failure_message_when_negated do |page|
      "expected #{page.text.inspect} not to have success message #{notice.inspect}"
    end
  end

  matcher :have_failure_message do |alert|
    match do |page|
      expect(page).to have_css(".alert-danger", text: alert)
    end

    failure_message do |page|
      "expected #{page.text.inspect} to have failure message #{alert.inspect}"
    end

    failure_message_when_negated do |page|
      "expected #{page.text.inspect} not to have failure message #{alert.inspect}"
    end
  end
end

RSpec.configure do |config|
  config.include Matchers, type: :feature
end
