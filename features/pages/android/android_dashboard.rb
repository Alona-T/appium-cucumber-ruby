class DashAndroid
  include Helper

  def first_element_pixel
    return driver.find_element(:xpath, "//hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.Button[2]")
  end

  def first_element_nexus
    return driver.find_element(:xpath, "//hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.Button")
  end


  def click_ok_button
    if ENV['DEVICE_NAME'] == "Nexus"
      click_on_element(first_element_nexus)
    end
    if ENV['DEVICE_NAME'] == "Pixel"
      click_on_element(first_element_pixel)
    end
  end
end