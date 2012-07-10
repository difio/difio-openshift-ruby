require "common-ruby-difio"

module Difio
  class Openshift < Difio::DifioBase
    configure({
	  'user_id'  => ENV['DIFIO_USER_ID'],
	  'app_name' => ENV['OPENSHIFT_GEAR_NAME'],
	  'app_uuid' => ENV['OPENSHIFT_GEAR_UUID'],
	  'app_type' => ENV['OPENSHIFT_GEAR_TYPE'],
	  'app_url'  => "http://#{ENV['OPENSHIFT_APP_DNS']}/",
	  'app_vendor' => 0,
	  'url' => ENV['DIFIO_REGISTER_URL'],
    })
  end
end
