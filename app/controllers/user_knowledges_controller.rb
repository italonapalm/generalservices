class UserKnowledgesController < ApplicationController
  before_action :set_user_knowledge, only: [:show, :edit, :update, :destroy]

  # GET /user_knowledges
  # GET /user_knowledges.json
  def index
    @user_knowledges = UserKnowledge.all
  end

  # GET /user_knowledges/1
  # GET /user_knowledges/1.json
  def show
  end

  # GET /user_knowledges/new
  def new
    @user_knowledge = UserKnowledge.new
  end

  # GET /user_knowledges/1/edit
  def edit
  end

  # POST /user_knowledges
  # POST /user_knowledges.json
  def create
    @user_knowledge = UserKnowledge.new(user_knowledge_params)

    respond_to do |format|
      if @user_knowledge.save
        format.html { redirect_to @user_knowledge, notice: 'User knowledge was successfully created.' }
        format.json { render :show, status: :created, location: @user_knowledge }
      else
        format.html { render :new }
        format.json { render json: @user_knowledge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_knowledges/1
  # PATCH/PUT /user_knowledges/1.json
  def update
    respond_to do |format|
      if @user_knowledge.update(user_knowledge_params)
        format.html { redirect_to @user_knowledge, notice: 'User knowledge was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_knowledge }
      else
        format.html { render :edit }
        format.json { render json: @user_knowledge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_knowledges/1
  # DELETE /user_knowledges/1.json
  def destroy
    @user_knowledge.destroy
    respond_to do |format|
      format.html { redirect_to user_knowledges_url, notice: 'User knowledge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_knowledge
      @user_knowledge = UserKnowledge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_knowledge_params
      params.require(:user_knowledge).permit(:user_id, :knowledge_id, :date)
    end
end
