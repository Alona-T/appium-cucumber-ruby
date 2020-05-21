class DashAndroid
  include Helper

  def first_element_pixel
    return driver.find_element(:xpath, "//hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.Button[2]")
  end

  def first_element_nexus
    return driver.find_element(:xpath, "//hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.Button")
  end

  def login_email
    return driver.find_element(:xpath, '//xpath')
  end

  def password_email
    return driver.find_element(:xpath, '//xpath')
  end

  def click_ok_button
    if ENV['DEVICE_NAME'] == "Nexus"
      click_on_element(first_element_nexus)
    end
    if ENV['DEVICE_NAME'] == "Pixel"
      click_on_element(first_element_pixel)
    end
  end

  def Login(login, password)
    login_email.send_keys login
    password_email.send_keys password
  end

  def permission_slick
    permission.click
  end

  def search_for_value(value)
    search_field.send_keys value
  end
end