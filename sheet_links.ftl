<#include "module/macro.ftl">
<#include "module/comment.ftl">


<@head title="友情链接-${options.blog_title!}" keywords="友情链接-${options.seo_keywords!}" description="${options.seo_description!}" />
<#include "module/header.ftl">
<#include "module/links/links.ftl" />
<div class="comment-form">
    <h4>评论</h4>
    <@comment sheet,"sheet" />
</div>

<@footer></@footer>
<#include "module/scripts.ftl" />