class Blog::EntriesController < ApplicationController
  before_action :set_blog_entry, only: %i[ show edit update destroy ]

  # GET /blog/entries or /blog/entries.json
  def index
    @blog_entries = Blog::Entry.all
  end

  # GET /blog/entries/1 or /blog/entries/1.json
  def show
  end

  # GET /blog/entries/new
  def new
    @blog_entry = Blog::Entry.new
  end

  # GET /blog/entries/1/edit
  def edit
  end

  # POST /blog/entries or /blog/entries.json
  def create
    @blog_entry = Blog::Entry.new(blog_entry_params)

    respond_to do |format|
      if @blog_entry.save
        format.html { redirect_to blog_entry_url(@blog_entry), notice: "Entry was successfully created." }
        format.json { render :show, status: :created, location: @blog_entry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blog_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog/entries/1 or /blog/entries/1.json
  def update
    respond_to do |format|
      if @blog_entry.update(blog_entry_params)
        format.html { redirect_to blog_entry_url(@blog_entry), notice: "Entry was successfully updated." }
        format.json { render :show, status: :ok, location: @blog_entry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blog_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog/entries/1 or /blog/entries/1.json
  def destroy
    @blog_entry.destroy

    respond_to do |format|
      format.html { redirect_to blog_entries_url, notice: "Entry was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_entry
      @blog_entry = Blog::Entry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blog_entry_params
      params.require(:blog_entry).permit(:title, :content)
    end
end
