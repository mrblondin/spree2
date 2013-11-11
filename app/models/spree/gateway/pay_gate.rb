class Spree::Gateway::PayGate < Spree::Gateway
  preference :login, :string
  preference :password, :string

  attr_accessible :preferred_login, :preferred_password

  def provider_class
    ActiveMerchant::Billing::Integrations::Maksuturva
  end
end