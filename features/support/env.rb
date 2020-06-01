require 'appium_lib'

username = 'name'
access_key = 'key'

case ENV['SERVER']
  when 'LOCAL'
  case ENV['PLATFORM']
    when 'ANDROID'
      case ENV['DEVICE_NAME']
        when "Pixel"
          caps = Appium.load_appium_txt\
          file: File.expand_path("../../support/caps/pixel.txt", __FILE__),\
          verbose: true
        when "Nexus"
          caps = Appium.load_appium_txt\
          file: File.expand_path("../../support/caps/nexus.txt", __FILE__),\
          verbose: true
      when "Nexussmall"
          caps = Appium.load_appium_txt\
          file: File.expand_path("../../support/caps/nexus_small.txt", __FILE__),\
          verbose: true
      end
      p caps

      Appium::Driver.new(caps, true)
      Appium.promote_appium_methods Object

    when 'IOS'
      case ENV['DEVICE_NAME']
        when "iPhoneXR"
          caps = Appium.load_appium_txt\
          file: File.expand_path("../../support/caps/iPhoneXR.txt", __FILE__),\
          verbose: true
        when "iPhone8Plus"
          caps = Appium.load_appium_txt\
          file: File.expand_path("../../support/caps/iPhone8Plus.txt", __FILE__),\
          verbose: true
        when "iPhone11"
          caps = Appium.load_appium_txt\
          file: File.expand_path("../../support/caps/iPhone11.txt", __FILE__),\
          verbose: true
      end
      p caps

      Appium::Driver.new(caps, true)
      Appium.promote_appium_methods Object
  end
when 'BROWSERSTACK'
  case ENV['PLATFORM']
    when 'ANDROID'
      case ENV['DEVICE_NAME']
        when "SamsungS10"
          caps = {}
          caps['build'] = 'Ruby Appium Sample'
          caps['name'] = 'single_test'
          caps['device'] = 'Samsung Galaxy S10e'
          caps['platformName'] = 'android'
          caps['browserstack.debug'] = true
          caps['app'] = 'bs://53a8f7dbb50924d160f69c03d984465272252d2a'
          caps['autoGrantPermissions'] = true

          appium_driver = Appium::Driver.new({
                                                 'caps' => caps,
                                                 'appium_lib' => {
                                                     :server_url => "http://#{username}:#{access_key}@hub-cloud.browserstack.com/wd/hub"
                                                 }}, true)
          p appium_driver
      when "GooglePixel"
        caps = {}
        caps['build'] = 'Ruby Appium Sample'
        caps['name'] = 'single_test'
        caps['device'] = 'Google Pixel 3'
        caps['platformName'] = 'android'
        caps['browserstack.debug'] = true
        caps['app'] = 'bs://53a8f7dbb50924d160f69c03d984465272252d2a'
        caps['autoGrantPermissions'] = true

        appium_driver = Appium::Driver.new({
                                               'caps' => caps,
                                               'appium_lib' => {
                                                   :server_url => "http://#{username}:#{access_key}@hub-cloud.browserstack.com/wd/hub"
                                               }}, true)
        p appium_driver
      end
  end
end

