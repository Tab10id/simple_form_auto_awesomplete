class SimpleForm::Inputs::AjaxAwesompleteInput < SimpleForm::Inputs::StringInput
  def input_html_options
    url_params = {}
    url_params[:class_name] = options[:search_class] if options[:search_class].present?
    url_params[:search_method] = options[:search_method] if options[:search_method].present?
    url_params[:default_class_name] = options[:default_class_name] if options[:default_class_name].present?
    url_params[:default_text_column] = options[:default_text_column] if options[:default_text_column].present?
    href = template.auto_awesompletes_path(url_params)
    input_options = super
    input_options[:data] = input_options[:data].to_h.merge({ awesomplete_href: href })
    css_classes = [input_options[:class], 'auto-ajax-awesomplete']
    input_options[:class] = css_classes.compact.join(' ')
    input_options
  end
end
