class Test2sController < ApplicationController
  before_action :set_test2, only: [:show, :update, :destroy]

  # GET /test2s
  def index
    @test2s = Test2.all

    render json: @test2s
  end

  # GET /test2s/1
  def show
    render json: @test2
  end

  # POST /test2s
  def create
    @test2 = Test2.new(test2_params)

    if @test2.save
      render json: @test2, status: :created, location: @test2
    else
      render json: @test2.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /test2s/1
  def update
    if @test2.update(test2_params)
      render json: @test2
    else
      render json: @test2.errors, status: :unprocessable_entity
    end
  end

  # DELETE /test2s/1
  def destroy
    @test2.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test2
      @test2 = Test2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def test2_params
      params.require(:test2).permit(:user_id)
    end
end
