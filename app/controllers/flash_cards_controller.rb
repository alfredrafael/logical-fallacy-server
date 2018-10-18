class FlashCardsController < ApplicationController
  before_action :set_flash_card, only: [:show, :update, :destroy]

  # GET /flash_cards
  def index
    @flash_cards = FlashCard.all

    render json: @flash_cards
  end

  # GET /flash_cards/1
  def show
    render json: @flash_card
  end

  # POST /flash_cards
  def create
    @flash_card = FlashCard.new(flash_card_params)

    if @flash_card.save
      render json: @flash_card, status: :created, location: @flash_card
    else
      render json: @flash_card.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /flash_cards/1
  def update
    if @flash_card.update(flash_card_params)
      render json: @flash_card
    else
      render json: @flash_card.errors, status: :unprocessable_entity
    end
  end

  # DELETE /flash_cards/1
  def destroy
    @flash_card.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flash_card
      @flash_card = FlashCard.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def flash_card_params
      params.require(:flash_card).permit(:fallacy_name, :fallacy_example)
    end
end
