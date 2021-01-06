# exists [![[version]](https://badge.fury.io/rb/exists.svg)](https://badge.fury.io/rb/exists) [![[ci]](https://github.com/janlelis/exists/workflows/Test/badge.svg)](https://github.com/janlelis/exists/actions?query=workflow%3ATest)

Like ActiveSupport's presence, but for [Object#null?](https://github.com/janlelis/null_question)

For example, this is useful when setting defaults via or: `object.exists || other_object`

## Setup

Add to your **Gemfile**:

```ruby
gem 'exists'
```

## Usage

```ruby
class NullObject
  def null?
    true
  end
end

nil.exists #=> nil
NullObject.new.exists #=> nil
"some object".exists #=> "some object"
```

## MIT License

Copyright (C) 2015 Jan Lelis <https://janlelis.com>. Released under the MIT license.
