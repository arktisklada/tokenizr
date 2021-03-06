# Tokenizr

Creates alpha tokens from numbers, and vice versa

```
Tokenizr.encode(123)         # => "5IbEL8X9e"

Tokenizr.decode("5IbEL8X9e") # => 123
```

A token can also be tested for validity:

```
Tokenizr.valid_token?("5IbEL8X9e") # => true
Tokenizr.valid_token?(nil)         # => false
```

## Contributing

1. Create an issue
2. Fork it ( https://github.com/arktisklada/tokenizr/fork )
3. Create your feature branch (`git checkout -b my-new-feature`)
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create a new Pull Request
