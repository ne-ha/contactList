require "omnicontacts"

Rails.application.middleware.use OmniContacts::Builder do
  importer :gmail, 
    “775333370063-v8d4p2rvcbjemhlnjt34u3vm5ekgm88g.apps.googleusercontent.com”, 
    “xR26XUNhcx6QnGJv8wgl7Zfl”, {:redirect_path => “/contacts/gmail/callback ”, :ssl_ca_file => “/etc/ssl/certs/curl-ca-bundle.crt”}
  importer :facebook, "750035695112072", "91d7cd52089583689650cd2256052bca"
end