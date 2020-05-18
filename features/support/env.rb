require 'appium_lib'

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
        end

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
    end

p caps

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object