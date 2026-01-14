# frozen_string_literal: true
I18n.available_locales = [:"pt-BR", :en]

I18n.default_locale = :"pt-BR"

Rails.application.config.after_initialize do
  I18n.fallbacks = [:"pt-BR", :en]
end
