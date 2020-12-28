class QuizzesController < ApplicationController
  def index
    @accounting_information = AccountingInformation.all.sample
    @asset_data = { '流動資産' => @accounting_information.current_asset, '固定資産' => @accounting_information.fixed_asset }
    @liability_data = { '流動負債' => @accounting_information.current_liability, '固定負債' => @accounting_information.fixed_liability, '純資産' => @accounting_information.net_asset }
  end

  def show
    # @accounting_information = AccountingInformation.find params[:id]
  end
end
