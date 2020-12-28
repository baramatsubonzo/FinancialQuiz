class QuizzesController < ApplicationController
  def index
    @accounting_information = AccountingInformation.all.sample
  end

  def show
    # @accounting_information = AccountingInformation.find params[:id]
  end
end
