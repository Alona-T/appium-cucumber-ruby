Before do
  $driver.start_driver
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