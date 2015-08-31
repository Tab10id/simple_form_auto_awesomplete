require 'simple_form_auto_awesomplete/version'
require 'simple_form_auto_awesomplete/engine'
require 'simple_form_auto_awesomplete/infectors'
SimpleForm::Inputs.send(:include, SimpleFormAutoAwesomplete::Infectors::SimpleForm::Inputs)

module SimpleFormAutoAwesomplete
  extend ActiveSupport::Autoload
end