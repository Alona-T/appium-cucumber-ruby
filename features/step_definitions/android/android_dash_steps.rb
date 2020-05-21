Given("App's login page is opened") do
    dash = DashAndroid.new
    dash.login($test_data['USERS']['DRIVER']['EMAIL'], $test_data['USERS']['DRIVER']['PASSWORD'])
end

Then("Orders are present on the Orders tab") do
end