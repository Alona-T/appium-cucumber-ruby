Before do
  $driver.start_driver
  $test_data = YAML.load_file(File.dirname(__FILE__) + "/../data/test_data.yml")
end

After do |scenario|
  if scenario.failed?
    file_path = 'screenshot.png'
    driver.save_screenshot(file_path)
    image = open(file_path, 'rb', &:read)
    encoded_image = Base64.encode64(image)
    embed(encoded_image, 'image/png;base64', 'SCREENSHOT')
  end
  $driver.driver_quit
end

#DB connection variables if needed
ENV['HOST'] = "myDB.local"
ENV['USER'] = 'user'
ENV['PASSWORD'] = "password"
ENV['PORT'] = "8080"
ENV['NAME'] = "name"

#if you want to fetch some data from queries (use from Client.rb). Example:
# @name = mysql_connection.query("SELECT * FROM user").first['id']