require "common-ruby-monupco"

module Monupco
  module Openshift
    class Express < Monupco::MonupcoBase
    	configure({
		  'user_id'  => ENV['MONUPCO_USER_ID'],
		  'app_name' => ENV['OPENSHIFT_GEAR_NAME'],
		  'app_uuid' => ENV['OPENSHIFT_GEAR_UUID'],
		  'app_type' => ENV['OPENSHIFT_GEAR_TYPE'],
		  'app_url'  => "http://#{ENV['OPENSHIFT_APP_DNS']}/",
		  'app_vendor' => 0,
		  'url' => ENV['MONUPCO_REGISTER_URL'],
    	})
    end
  end
end
