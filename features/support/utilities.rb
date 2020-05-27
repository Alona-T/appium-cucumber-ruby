module Helper

  def wait_for_element(elem, count=60)

    init = 0
    until init == count
      begin
        break if elem.displayed? == true
      rescue
        raise ArgumentError.new("Unable to find the element #{elem} in #{count*10} secs") if init == count - 1
      end
      init += 1
    end
  end

  def click_on_element(elem)
    wait_for_element(elem)
    elem.click
  end

  def swipe_to_top(element, duration)
    elem = element
    x = elem.location.x
    y = elem.location.y
    Appium::TouchAction.swipe(start_x: x, start_y: y, duration: duration)
  end

  def swipe_horizontally(element_s, element_e, duration)
    element_start = element_s
    x_start = element_start.location.x
    y_start = element_start.location.y
    element_end = element_e
    x_end = element_end.location.x
    y_end = element_end.location.y
    Appium::TouchAction.swipe(start_x: x_end, start_y: y_end, end_x: x_start, end_y: y_start, duration: duration)
  end
end