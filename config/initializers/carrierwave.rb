CarrierWave.configure do |config|
    config.fog_credentials = {
        :provider               => 'OpenStack',
        :openstack_auth_url     => 'https://auth.selcdn.ru/v1.0',
        :openstack_username     => "#{CONFIG[:fog_login]}",
        :openstack_api_key      => "#{CONFIG[:fog_key]}"
    }
    config.fog_directory  = "storage"  # required
    config.fog_public     = true                                 # optional, defaults to true
    config.fog_attributes = {}  # optional, defaults to {}
end