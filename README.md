## administrate-field-enumerate

A plugin to show [enumerate_it](https://github.com/lucascaton/enumerate_it) attributes in [Administrate](https://github.com/thoughtbot/administrate).

## Installation

Add to Gemfile:

```
gem 'administrate-field-enumerate'
```

In your terminal execute:

```
$ bundle install
```

## Usage example
```
# app/enumerations/role_type.rb
class RoleType < EnumerateIt::Base
  associate_values(
    :contributor,
    :editor,
    :admin,
    :super_admin 
  )
end

# app/dashboards/user_dashboard.rb
ATTRIBUTE_TYPES = {
  ...
  role: Field::Enumerate
  ...
}
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/SourceLabsLLC/administrate-field-enumerate

## License

[MIT License](https://github.com/SourceLabsLLC/administrate-field-enumerate/blob/master/LICENSE.md)

