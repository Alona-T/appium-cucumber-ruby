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
end