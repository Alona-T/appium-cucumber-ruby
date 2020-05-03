Given("App's login page is opened") do
end

Then("Orders are present on the Orders tab") do
    dash = DashAndroid.new
    expect(dash.first_element.displayed?).to be(true)
end