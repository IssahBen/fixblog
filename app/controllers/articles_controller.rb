class ArticlesController < ApplicationController

    def new 
       @article=Article.new 
    end

    def index 
        @articles=Article.all
    end
    
    def create
        @article = Article.new(article_params)

        @article.user=User.first
        

        if @article.save
            flash[:notice] =  "article was created "
            redirect_to articles_path

        else
            render :new ,status: :unprocessable_entity
        end
    end

    def show 
        @article = Article.find(params[:id])
    end


    def edit 
        @article=Article.find(params[:id])
    end

    def update 
        @article = Article.find(params[:id])

        if @article.update(article_params)

            flash[:notice]="Article updated successfully"
            redirect_to @article


        else
            render :edit ,status: :unprocessable_entity
        end
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        redirect_to articles_path
    end




    def article_params
        params.require(:article).permit(:title,:description)
    end


end
