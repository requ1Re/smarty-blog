{include file="include/header.tpl" title="{$data.ui.TEXT_UI_NEW_BLOG_POST}"  admin=$data.user.admin}
{include file="include/notifications.tpl" notifications=$data.notifications}

<div class="container pagebg">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="text-center">{$data.ui.TEXT_UI_NEW_BLOG_POST}</h1>

            <form id="createBlog" method="post" action="">
                <input type="hidden" name="addBlogPost" value="true">
                <input type="hidden" name="blog_text" id="blog_text">
                <h1 class="mt-4"><input type="text" class="form-control" name="blog_title" placeholder=""></h1>
                <hr>
                <p class="lead">
                    <div id="editor" style="max-height: 400px;">

                    </div>
                </p>
                <input type="submit" class="btn btn-info" value="{$data.ui.TEXT_UI_SUBMIT}">
            </form>
        </div>
    </div>
</div>




{include file="include/footer.tpl" editor=true}