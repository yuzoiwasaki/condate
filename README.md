# Condate

献立決めプログラム。指定したジャンルの献立をランダムに表示します。

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'condate'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install condate

## Usage

```ruby
condate = Condate.new('japanese')
condate.decide #=> "肉じゃが"
condate = Condate.new('chinese')
condate.decide #=> "チンジャオロースー"
condate = Condate.new('western')
condate.decide #=> "ハンバーグ"
condate = Condate.new('any')
condate.decide #=> 全ジャンルからランダムに表示
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/condate/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
