<#include "layout/_include/head.ftl">
<@head title="标签: ${tag.name} - ${blog_title!}"></@head>
<#include "layout/_include/container_head.ftl">
<#include "layout/_include/single_column_head.ftl">
<#include "layout/_include/side_nav.ftl">
<#include "layout/_include/extra_nav.ftl">
<@extra_nav true '${tag.fullPath!}/'/>
<div ref="streamContainer" class="stream-container">
    <div class="post-list-container post-list-container-shadow">
        <div class="post-item-wrapper post-item-wrapper-no-hover">
            <div class="post-item post-item-no-gaps">
                <div class="post-item-info-wrapper">
                    <div class="post-item-title  post-item-title-small">
                        <a href="${tags_url!}">标签</a> / ${tag.name!}
                    </div>
                </div>
            </div>
        </div>
        <#list posts.content as post>
            <a href="${post.fullPath!}" class="a-block">
                <div class="post-item-wrapper">
                    <div class="post-item post-item-no-gaps">
                        <div class="post-item-info-wrapper">
                            <div class="post-item-title">
                                ${post.title!}
                            </div>
                            <div class="post-item-meta">
                                ${post.createTime?string('yyyy-MM-dd')}
                            </div>
                        </div>
                    </div>
                </div>
            </a>
        </#list>
        <#if posts?? && posts.totalPages gt 1>
            <@paginationTag method="tagPosts" page="${posts.number}" total="${posts.totalPages}" display="3" slug="${tag.slug!}">
                <#include "layout/_include/pagination.ftl">
            </@paginationTag>
        </#if>
    </div>
    <#include "layout/_include/single_column_footer.ftl">
</div>

<#include "layout/_include/container_tail.ftl">
<#include "layout/_include/tail.ftl">