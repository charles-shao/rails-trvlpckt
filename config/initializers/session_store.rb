# Be sure to restart your server when you modify this file.

RailsTrvlpckt::Application.config.session_store :cookie_store, key: '_rails-trvlpckt_session'
RailsTrvlpckt::Application.config.secret_token = "fc5bf5a50fd6b440a35d113f324c5e75"
# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# RailsTrvlpckt::Application.config.session_store :active_record_store
