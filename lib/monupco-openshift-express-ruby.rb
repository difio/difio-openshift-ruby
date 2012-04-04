require "common-ruby-monupco"

module Monupco
  module Openshift
    class Express < Monupco::MonupcoBase
    	configure({
		  'user_id'  => ENV['MONUPCO_USER_ID'],
		  'app_name' => ENV['OPENSHIFT_GEAR_NAME'],
		  'app_uuid' => ENV['OPENSHIFT_GEAR_UUID'],
		  'app_type' => 'Ruby',
		  'app_url'  => "http://#{ENV['OPENSHIFT_APP_DNS']}/",
		  'app_vendor' => 0,
		  'pkg_type' => 2,
		  'url' => ENV['MONUPCO_REGISTER_URL'],
    	})
    end
  end
end
