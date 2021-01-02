class UsersController < ApplicationController

  def edit
  end

# updateアクション内で、保存できた場合とできなかった場合で条件分岐current_user.updateに成功した場合、root（チャット画面）にリダイレクトします。失敗した場合、render :editとeditのアクションを指定しているため、editのビューが表示されます
  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

end
