require 'rake'
require 'json'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:android) do |features|
  ENV['SERVER'] = 'LOCAL'
  mkdir_p(["./tmp", "./reports"], verbose: false)
  features.cucumber_opts = "features/scenarios/*.feature --exclude features/pages/ios --exclude features/step_definitions/ios --format html --out reports/output.html --format pretty --guess PLATFORM=ANDROID SERVER=LOCAL"
end

Cucumber::Rake::Task.new(:ios) do |features|
  ENV['SERVER'] = 'LOCAL'
  mkdir_p(["./tmp", "./reports"], verbose: false)
  features.cucumber_opts = "features/scenarios/*.feature --exclude features/pages/android --exclude features/step_definitions/android --format html --out reports/output.html --format pretty --guess PLATFORM=IOS"
end

#to run on particular IOS device
task :ios_device, [:device] do |_task, args|
  device = args.device
  ENV['DEVICE_NAME'] = device
  ENV['SERVER'] = 'LOCAL'

  puts "<< Device #{device} >>"
  mkdir_p(["./tmp", "./reports"], verbose: false)

  system "cucumber features/scenarios/*.feature" +
             " --exclude features/pages/android" +
             " --exclude features/step_definitions/android" +
             " --format html" +
             " --out reports/output.html" +
             " --format pretty" +
             " --guess" +
             " PLATFORM=IOS" +
             " DEVICE_NAME=#{device}"
end

#to run on particular Android device
task :android_device, [:device] do |_task, args|
  device = args.device
  ENV['DEVICE_NAME'] = device
  ENV['SERVER'] = 'LOCAL'

  puts "<< Device #{device} >>"
  mkdir_p(["./tmp", "./reports"], verbose: false)

  system "cucumber features/scenarios/*.feature" +
             " --exclude features/pages/ios" +
             " --exclude features/step_definitions/ios" +
             " --format html" +
             " --out reports/output.html" +
             " --format pretty" +
             " --guess" +
             " PLATFORM=ANDROID" +
             " DEVICE_NAME=#{device}"
end

#to run in browserstack
task :ios_browserstack, [:device] do |_task, args|
  device = args.device
  ENV['DEVICE_NAME'] = device
  ENV['SERVER'] = 'BROWSERSTACK'

  puts "<< Device #{device} >>"
  mkdir_p(["./tmp", "./reports"], verbose: false)

  system "cucumber features/scenarios/*.feature" +
             " --exclude features/pages/android" +
             " --exclude features/step_definitions/android" +
             " --format html" +
             " --out reports/output.html" +
             " --format pretty" +
             " --guess" +
             " PLATFORM=IOS" +
             " SERVER=BROWSERSTACK" +
             " DEVICE_NAME=#{device}"
end

#to run on particular Android device
task :android_browserstack, [:device] do |_task, args|
  device = args.device
  ENV['DEVICE_NAME'] = device
  ENV['SERVER'] = 'BROWSERSTACK'

  puts "<< Device #{device} >>"
  mkdir_p(["./tmp", "./reports"], verbose: false)

  system "cucumber features/scenarios/*.feature" +
             " --exclude features/pages/ios" +
             " --exclude features/step_definitions/ios" +
             " --format html" +
             " --out reports/output.html" +
             " --format pretty" +
             " --guess" +
             " PLATFORM=ANDROID" +
             " SERVER=BROWSERSTACK" +
             " DEVICE_NAME=#{device}"
end


task :clean do
  rm_rf "tmp"
  rm_rf "screenshot.png"
  rm_rf "reports"
end