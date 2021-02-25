class QuizzesController < ApplicationController
  def index
    @accounting_information = AccountingInformation.all.sample
    gon.push({
      current_asset: @accounting_information.current_asset,
      fixed_asset: @accounting_information.fixed_asset,
      current_liability: @accounting_information.current_liability,
      fixed_liability: @accounting_information.fixed_liability,
      net_asset: @accounting_information.net_asset
    })
  end

  def show
    # @accounting_information = AccountingInformation.find params[:id]
  end
end
