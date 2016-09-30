Spree::Admin::Orders::CustomerDetailsController.class_eval do 

  private

  # Add terms_and_conditions parameter
  def order_params
    params.require(:order).permit(
      :email,
      :use_billing,
      :terms_and_conditions,
      bill_address_attributes: permitted_address_attributes,
      ship_address_attributes: permitted_address_attributes
    )
  end
end
