module Spree
  Spree::CheckoutController.class_eval do
    before_action :check_products_availability
    
    private

    def check_products_availability
      advice = item_avalable?
      redirect_to spree.root_path, :flash => {:error => advice} if advice
    end

    def item_avalable?
      @order.line_items.each do |item|
        unless item.product.available_on.present?
          return Spree.t(:inventory_error_flash_for_insufficient_quantity) + ' ' + Spree.t(:product) + ' ' + item.product.name
        end
      end
      return nil
    end
  end
end