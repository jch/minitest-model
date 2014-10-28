# MiniTest::Model

Test assertions for ActiveModel and ActiveRecord.

    assert_valid @some_model
    assert_valid @some_model, :some_attribute

    refute_valid @some_model
    refute_valid @some_model, :some_attribute

Read [the test](/test/test.rb) for a complete example. This gem will work with
any minitest compatible test framework.

## Installation

Add this line to your application's Gemfile:

    gem 'minitest-model'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install minitest-model

In your test base class, add:

    class MyTest < Minitest::Test
      include Minitest::Model
    end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
