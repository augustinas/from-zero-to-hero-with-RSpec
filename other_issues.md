##I am getting deprecation warnings when I run RSpec – what have I broken now?##
Messages like this:

```
Deprecation Warnings:

Using `should_not` from rspec-expectations' old `:should` syntax without explicitly enabling the syntax
is deprecated. Use the new `:expect` syntax or explicitly enable `:should` with
`config.expect_with(:rspec){ |c| c.syntax = :should }` instead.


If you need more of the backtrace for any of these deprecations to
identify where to make the necessary changes, you can configure
`config.raise_errors_for_deprecations!`, and it will turn the
deprecation warnings into errors, giving you the full backtrace.

1 deprecation warning total
```

simply mean that the tests you are running are using an old syntax. If they’re your own tests, then you might want to consider updating them, otherwise there’s not much you can do. The warnings are not stopping the tests from performing correctly, so you can ignore them. If you really want to quieten them, you can follow the steps in [Relish – RSpec Expectations](https://relishapp.com/rspec/rspec-expectations/docs/syntax-configuration) (Myron Marsten outlines it in his [blog](http://rspec.info/blog/2012/06/rspecs-new-expectation-syntax/).)
