class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  # GET /blogs
  # GET /blogs.json
  def index
    @blogs = Blog.all
  end

  # GET /blogs/1
  # GET /blogs/1.json
  def show
    @blog = Blog.find_by_slug(params[:slug])
  end

  # GET /blogs/new
  def new
    @blog = Blog.new
  end

  # GET /blogs/1/edit
  def edit
  end

  # POST /blogs
  # POST /blogs.json
  def create
    slug = params[:blog][:description].parameterize.truncate(80, omission: '')
    #@blog = Blog.new(blog_params)
    @blog = current_user.blogs.build(content: params[:blog][:content], title: params[:blog][:title], slug: slug, description: params[:blog][:description], foto_primera: params[:blog][:foto_primera], foto_segunda: params[:blog][:foto_segunda], foto_tercera: params[:blog][:foto_tercera], content_segundo: params[:blog][:content_segundo], content_tercero: params[:blog][:content_tercero], hashtag: params[:blog][:hashtag], hashtag_segundo: params[:blog][:hashtag_segundo], hashtag_tercero: params[:blog][:hashtag_tercero])

    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: 'Blog was successfully created.' }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogs/1
  # PATCH/PUT /blogs/1.json
  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: 'Blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'Blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.find_by_slug(params[:slug])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_params
      params.require(:blog).permit(:user_id, :content, :title, :foto_primera, :foto_segunda, :foto_tercera, :slug, :description, :content_segundo, :content_tercero, :hashtag, :hashtag_segundo, :hashtag_tercero)
    end
end
