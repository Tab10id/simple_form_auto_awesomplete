module SimpleFormAutoAwesomplete::Infectors::SimpleForm::Inputs
  extend ActiveSupport::Concern

  included do
    autoload :AjaxAwesompleteInput
  end
end