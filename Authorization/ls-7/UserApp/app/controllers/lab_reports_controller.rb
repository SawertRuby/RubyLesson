class LabReportsController < ApplicationController
    before_action :authenticate_user_auth!
  
    def index
        @lab_reports = LabReport.all
      end
    
      def show
        @lab_report = LabReport.find(params[:id])
      end
    
      def new
        @lab_report = LabReport.new
        @users = User.all # Загружаем всех пользователей для выбора
      end
    
      def create
        @lab_report = LabReport.new(lab_report_params)
        if @lab_report.save
          redirect_to @lab_report, notice: 'Lab report was successfully created.'
        else
          @users = User.all # Загружаем всех пользователей для выбора при ошибке
          render :new
        end
      end
    
      private
    
      def lab_report_params
        params.require(:lab_report).permit(:title, :description, :grade, :user_id)
      end
  end
  