# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_dbros_session',
  :secret      => '5089e23d9230255f62fcae3b769e0e19f1290a83eec5c62749679b4dd1c55298312970fe954a4b86b67b9537e891cae134f1b45b92890d6137ae4b54da0bca57'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
