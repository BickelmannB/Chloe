require 'test_helper'

class ProfilMailerTest < ActionMailer::TestCase
  test "contact" do
    mail = ProfilMailer.contact
    assert_equal "Contact", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
