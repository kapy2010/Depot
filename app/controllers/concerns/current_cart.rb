module CurrentCart

    private

    def set_cart
        @cart = Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
        @cart = Cart.create
        session[:cart_id] = @cart.id
    end

    def set_counter
        if session[:counter].nil?
            @counter = 0
        else
            @counter = session[:counter] + 1
        end
        session[:counter] = @counter
    end

    def reset_counter
        session[:counter] = 0
    end
end