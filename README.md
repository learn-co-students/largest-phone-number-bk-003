

# Largest Phone Number

## About

For this challenge, we are interested in finding the phone number whose digits sum to the largest number.

Write a single method, `#largest_phone_number`, that outputs the "largest" phone number in an input array (if multiple numbers are equally the largest return the last one). 

Assume that the phone numbers are strings of 10 digits separated by dashes and parenthesis.

## Examples

```ruby
largest_phone_number(['123-456-7777', '963-481-7945', '111-222-3333'])
#=> '963-481-7945'

largest_phone_number(['555-555-5555','111-111-1111','(555)555-5456','222-121-2121'])
#=> '(555)555-5456'

largest_phone_number(['123-456-7899'])
#=> '123-456-7899'
```

## Resources

* [#split](http://ruby-doc.org/core-2.1.4/String.html#method-i-split)
* [#gsub](http://ruby-doc.org/core-2.1.4/String.html#method-i-gsub)
