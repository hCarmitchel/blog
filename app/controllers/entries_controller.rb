class EntryController < ApplicationController
  def index
    @entries = Entry.order('title')
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy

    redirect_to action: 'index'
  end
end
