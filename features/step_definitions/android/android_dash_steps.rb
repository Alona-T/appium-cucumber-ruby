Given("App's login page is opened") do
    dash = DashAndroid.new
    # dash.click_on_element(dash.first_element)
    dash.click_ok_button
end

Then("Orders are present on the Orders tab") do
end