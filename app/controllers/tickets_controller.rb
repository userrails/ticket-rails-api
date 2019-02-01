class TicketsController < ApplicationController
  before_action :find_ticket, only: [:edit, :update, :destroy]

  def index
    @tickets = Ticket.all
    render json: @tickets
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)
    if @ticket.save
      render json: @ticket
    end
  end

  def edit
  end

  def update
    if @ticket.update_attributes(ticket_params)
      render json: @ticket
    end
  end

  def destroy
    @ticket.destroy
  end

  private

  def find_ticket
    @ticket = Ticket.find(params[:id])
  end

  def ticket_params
    params.require(:ticket).permit(:title, :issued_date, :source, :destination, :status)
  end
end
