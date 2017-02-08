class QuotesController < ApplicationController
  before_action :set_quote, only: [:show, :edit, :destroy]

    def new
      @quote = Quote.new
    end

    def index
      @quotes = Quote.all
    end

    def show
    end

    def create
      @quote = Quote.new(quote_params)
      if @quote.save
        flash[:notice] = "Quote saved."
        redirect_to quotes_path
      else
        render :new
      end
    end

    def edit
    end

    def update
      @quote = Quote.find_by_id(params[:id])
      @quote.update(quote_params)
      if @quote.save
        flash[:notice] = "Quote updated."
        redirect_to quote_path(@quote)
      else
        redirect_to new_quote_path
      end
    end

    def destroy
      if @quote.delete
        flash[:notice] = "Quote deleted"
        redirect_to quotes_path
      else
        flash[:notice] = @quote.errors.full_messages
        redirect_to quote_path(@quote)
      end
    end

    private
      def set_quote
        @quote = Quote.find_by_id(params[:id])
      end

      def quote_params
        params.require(:quote).permit(:phrase_id, :celeb_id, :verb_id, :adj_id, :food_id, :diet_id)
      end
  end
