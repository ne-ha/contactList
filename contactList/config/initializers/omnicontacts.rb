require "omnicontacts"

Rails.application.middleware.use OmniContacts::Builder do
  importer :gmail, "
    775333370063-engsqoo5192smsn7lm22fn0q8jn91chu.apps.googleusercontent.com", "
    n-AqWAQirRECrT8RYjNGEHiu", {:redirect_path => "/oauth2callback", :ssl_ca_file => "/etc/ssl/certs/curl-ca-bundle.crt"}
  importer :facebook, "750035695112072", "91d7cd52089583689650cd2256052bca"
end