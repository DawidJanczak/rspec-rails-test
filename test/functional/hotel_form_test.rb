require "test_helper"

class HotelsPartialTest < ActionView::TestCase
  def test_form_partial
    city = City.new
    f = nil
    form_for(city) { |form| f = form }
    render "hotels/form", f: f
    assert_select "h5", 1
  end
end
