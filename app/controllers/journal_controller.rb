class JournalController < ApplicationController
    before_action :set_entry, only: [:show, :update, :destroy]

    def index
       entries = Entry.all.order(:id)
       render json: entries 
    end

    def create
       entry = Entry.create(entry_params) 
       render json: entry
    end

    def show
        render json: @entry 
    end

    def update
        @entry.update(entry_params)
        render json: @entry 
    end

    def destroy
        @entry.destroy
        render json: 'ok'
    end

    private

    def set_entry
        @entry = Entry.find(params[:id])
    end

    def entry_params
        return params.require(:journal).permit(:content, :category_id)
    end
end
