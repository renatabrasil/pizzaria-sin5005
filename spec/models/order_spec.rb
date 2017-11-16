require 'rails_helper'

RSpec.describe Order, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  let!(:client) { FactoryGirl.create :client }

  #
  # subject {
  #   Client.new(name: "Client 1", phone: "99999-9999",
  #             address: "Rua das Palmeiras, 999")
  # }
  #
  # subject {
  #   Order.new(name: "Client 1", phone: "99999-9999",
  #             address: "Rua das Palmeiras, 999")
  # }

end

# id bigint NOT NULL DEFAULT nextval('orders_id_seq'::regclass),
# created_at timestamp without time zone NOT NULL,
# updated_at timestamp without time zone NOT NULL,
# client_id bigint,
# employee_id bigint NOT NULL,
# value numeric(8,2),
# CONSTRAINT orders_pkey PRIMARY KEY (id)
