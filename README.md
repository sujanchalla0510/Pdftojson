# Pdftojson

It takes pdf file as input, generate a text file and then uses text file to create a json 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'Pdftojson'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install Pdftojson

## Usage
```
converter = Pdftojson::Convert.new(pdf_file)
converter.get_json
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sujankumar0510/Pdftojson. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


