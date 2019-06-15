require 'yaml'

MESSAGES = YAML.load_file('calculator_messages.yml')


# The documentation for YAML::load_file can be found here:
# https://docs.ruby-lang.org/en/2.6.0/Psych.html#method-c-load_file

# The YAML module is an alias of Psych, the YAML engine for Ruby.