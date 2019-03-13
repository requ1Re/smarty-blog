{include file="include/header.tpl" title="Blogeinträge" admin=$data.user.admin}
{include file="include/notifications.tpl" notifications=$data.notifications}

<div class="container pagebg">
    <div class="row">
        <div class="col-lg-12">
            {include file="include/breadcrumb.tpl" activePage="Blogeinträge"}
        </div>
        {if $data.user.isAuthor}
            <div class="col-lg-12">
                <a href="?p=createBlogPost" class="btn btn-info"><i class="fas fa-plus"></i> Neuer Blogeintrag</a>
            </div>
        {/if}
        <div class="col-lg-8 shadow">
            {foreach from=$data.blog_entries item=blogentry}
            <div class="card my-4 shadow">
                <h5 class="card-header"><span class="float-left"><a href="?p=blog&id={$blogentry.id}">{$blogentry.title}</a></span><span class="float-right">#{$blogentry.id}</span></h5>
                <div class="card-body">
                    {$blogentry.text|truncate:1024:"...":false nofilter}
                </div>
                <div class="card-footer align-middle">
                    veröffentlicht am {$blogentry.date|date_format:"%d.%m.%Y %H:%M"} von <a href="?p=search&query={$blogentry.author_name}">{$blogentry.author_name}</a>
                </div>
            </div>
            {/foreach}
        </div>
        {include file="include/sidebar.tpl" user=$data.user}
    </div>
</div>


{include file="include/footer.tpl"}