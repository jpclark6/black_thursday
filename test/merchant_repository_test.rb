require './test/test_helper'
require './lib/merchant_repository'

class MerchantRepositoryTest < Minitest::Test
  def test_it_exists
    mr = MerchantRepository.new
    assert_instance_of MerchantRepository, mr
  end
end
