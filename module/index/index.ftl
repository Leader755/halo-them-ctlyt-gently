            <#--         判断是否已经有置顶文章-->
<#list posts.content as post>
    <#if post.topPriority == 1>
        <#assign isTop = 'yes'>
        <#break>
    </#if>
</#list>
<#if isTop??>
    <section class="home_banner_area">
        <div class="container">
            <div class="row">
                <div class="col-lg-5"></div>
                <div class="col-lg-7">
                    <div class="blog_text_slider owl-carousel">
                        <#list posts.content as post>
                            <#if post.topPriority == 1>
                                <div class="item">
                                    <div class="blog_text">
                                        <div class="cat">
                                            <#list post.categories as category>
                                                <a class="cat_btn" href="${context!}/categories/${category.slugName!}">${category.name!}</a>
                                            </#list>
                                            <span><i class="fa fa-calendar" aria-hidden="true"></i> ${post.createTime?string["EEE MMM d"]}</span>
                                            <span><i class="fa fa-eye" aria-hidden="true"></i> ${post.visits!0}</span>
                                        </div>
                                        <a href="${context!}/archives/${post.url!}"><h4>${post.title!}</h4></a>
                                        <p class="ctlyt-p-text">${post.summary!}</p>
                                        <a class="blog_btn" href="${context!}/archives/${post.url!}">阅读更多</a>
                                    </div>
                                </div>
                            </#if>
                        </#list>
                    </div>
                </div>
            </div>
        </div>
    </section>
 <#else>
 <section class="banner_area">
    <div class="container">
        <div class="row banner_inner">
            <div class="col-lg-5"></div>
            <div class="col-lg-7">
                <div class="banner_content text-center">
                    <h2>首页</h2>
                    <div class="page_link">
                        <a href="${context!}">主页</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</#if>
<section class="blog_area p_120">
    <div class="container">
        <div class="row">
            <#if settings.sidebar_tags!true>
                <div class="col-lg-8">
                    <#if posts.content?size gt 0>
                        <#list posts.content as post>
                            <article class="blog_style1">
                                <div class="blog_img">
                                    <img class="img-fluid" src="<#if post.thumbnail?? && post.thumbnail != ''>${post.thumbnail}<#else>/bg.png</#if>" alt="${post.title!}">
                                </div>
                                <div class="blog_text">
                                    <div class="blog_text_inner">
                                        <div class="cat">
                                            <#list post.categories as category>
                                                <a class="cat_btn" href="${context!}/categories/${category.slugName!}">${category.name!}</a>
                                            </#list>
                                            <span><i class="fa fa-calendar" aria-hidden="true"></i> ${post.createTime?string["EEE MMM d"]}</span>
                                            <span><i class="fa fa-eye" aria-hidden="true"></i> ${post.visits!0}</span>
                                        </div>
                                        <a href="${context!}/archives/${post.url!}"><h4>${post.title!}</h4></a>
                                        <p class="ctlyt-p-text">${post.summary!}</p>
                                        <a class="blog_btn" href="${context!}/archives/${post.url!}">阅读更多</a>
                                    </div>
                                </div>
                            </article>
                        </#list>
                        <#if posts.getTotalPages() gt 0>
                            <nav class="blog-pagination justify-content-center d-flex">
                                <ul class="pagination">
                                    <li class="page-item <#if posts.number gt 0><#else > is-invisible is-hidden-mobile</#if>">
                                        <a href="${context!}/page/${posts.number}" class="page-link" aria-label="上一页">
                                            <span aria-hidden="true">
                                                <span class="lnr lnr-chevron-left"></span>
                                            </span>
                                        </a>
                                    </li>
                                    <#list rainbow as r>
                                        <#if r == posts.number+1>
                                            <li class="page-item active"><a href="${context!}/page/${posts.number+1}" class="page-link">${posts.number+1}</a></li>
                                        <#else>
                                            <li class="page-item"><a href="${context!}/page/${r}" class="page-link">${r}</a></li>
                                        </#if>
                                    </#list>
                                    <li class="page-item <#if posts.getTotalPages() gt posts.number+1><#else > is-invisible is-hidden-mobile</#if>">
                                        <a href="${context!}/page/${posts.number+2}" class="page-link" aria-label="下一页">
                                            <span aria-hidden="true">
                                                <span class="lnr lnr-chevron-right"></span>
                                            </span>
                                        </a>
                                    </li>

                                </ul>
                            </nav>
                        </#if>
                    </#if>
                
                </div>
                <div class="col-lg-4">
                    <div class="blog_right_sidebar">
                        <#if settings.sidebar_profile!true>
                            <aside class="single_sidebar_widget author_widget">
                                <img class="author_img img-fluid" src="${user.avatar!}" alt="">
                                <h4>${user.nickname!}</h4>
                                <p>${user.description!}</p>
                                <p>${options.seo_description!}</p>
                                <div class="social_icon">
                                    <#if settings.gently_github?? && settings.gently_github!=''>
                                        <a href="https://github.com/${settings.gently_github}" target="_blank"><i class="fa fa-github"></i></a>
                                    </#if>
                                    <#if settings.gently_qq?? && settings.gently_qq!=''>
                                        <a href="tencent://message/?uin=${settings.gently_qq}&Site=&Menu=yes" target="_blank"><i class="fa fa-qq"></i></a>
                                    </#if>
                                    <#if settings.gently_weibo?? && settings.gently_weibo!=''>
                                        <a href="https://weibo.com/${settings.gently_weibo}" target="_blank"><i class="fa fa-weibo"></i></a>
                                    </#if>
                                    <#if settings.gently_twitter?? && settings.gently_twitter!=''>
                                        <a href="https://twitter.com/${settings.gently_twitter}" target="_blank"><i class="fa fa-twitter"></i></a>
                                    </#if>
                                    <#if settings.gently_facebook?? && settings.gently_facebook!=''>
                                        <a href="https://www.facebook.com/${settings.gently_facebook}" target="_blank"><i class="fa fa-facebook"></i></a>
                                    </#if>
                                    <#if settings.gently_email?? && settings.gently_email!=''>
                                        <a href="mailto:${settings.gently_email}" target="_blank"><i class="fa fa-envelope"></i></a>
                                    </#if>
                                    <#if settings.gently_telegram?? && settings.gently_telegram!=''>
                                        <a href="https://t.me/${settings.gently_telegram}" target="_blank"><i class="fa fa-telegram"></i></a>
                                    </#if>
                                    <a href="${context!}/atom.xml" target="_blank"><i class="fa fa-rss"></i></a>
                                </div>
                                <div class="br"></div>
                            </aside>
                        </#if>
                        <#if settings.sidebar_recentpost!true>
                            <aside class="single_sidebar_widget popular_post_widget">
                                <h3 class="widget_title">最新文章</h3>
                                <@postTag method="latest" top="5">
                                    <#list posts as post>
                                        <div class="media post_item">
                                            <img class="img-width" src="${post.thumbnail!}" alt="${post.title!}">
                                            <div class="media-body">
                                                <a href="${context!}/archives/${post.url!}"><h3>${post.title!}</h3></a>
                                                <p>${post.createTime?string["EEE MMM d"]}</p>
                                            </div>
                                        </div>
                                    </#list>
                                </@postTag>
                                <div class="br"></div>
                            </aside>
                        </#if>
                        <#if settings.sidebar_categories!true>
                            <aside class="single_sidebar_widget post_category_widget">
                                <h4 class="widget_title">分类</h4>
                                <ul class="list cat-list">
                                    <@categoryTag method="list">
                                        <#list categories as category>
                                            <#if category.postCount gt 0 >
                                                <li>
                                                    <a href="${context!}/categories/${category.slugName!}" class="d-flex justify-content-between">
                                                        <p>${category.name}</p>
                                                        <p>${category.postCount}</p>
                                                    </a>
                                                </li>
                                            </#if>
                                        </#list>
                                    </@categoryTag>														
                                </ul>
                            </aside>
                        </#if>
                        <#if settings.sidebar_tagcloud!true>
                            <@tagTag method="list">
                                <#if tags?? && tags?size gt 0>
                                    <aside class="single-sidebar-widget tag_cloud_widget">
                                        <h4 class="widget_title">标签云</h4>
                                        <ul class="list">
                                            <#list tags as tag>
                                                <li><a href="${context!}/tags/${tag.slugName!}">${tag.name!}</a></li>
                                            </#list>
                                        </ul>
                                    </aside>
                                </#if>
                            </@tagTag>
                        </#if>
                    </div>
                </div>
            <#else>
                
                <#if posts.content?size gt 0>
                    <#list posts.content as post>
                        <div class="col-lg-6">
                            <article class="blog_style1">
                                <div class="blog_img">
                                    <img class="img-fluid" src="<#if post.thumbnail?? && post.thumbnail != ''>${post.thumbnail}<#else>${static!}/source/img/bg.png</#if>" alt="${post.title!}">
                                </div>
                                <div class="blog_text">
                                    <div class="blog_text_inner">
                                        <div class="cat">
                                            <#list post.categories as category>
                                                <a class="cat_btn" href="${context!}/categories/${category.slugName!}">${category.name!}</a>
                                            </#list>
                                            <span><i class="fa fa-calendar" aria-hidden="true"></i> ${post.createTime?string["EEE MMM d"]}</span>
                                            <span><i class="fa fa-eye" aria-hidden="true"></i> ${post.visits!0}</span>
                                        </div>
                                        <a href="${context!}/archives/${post.url!}"><h4>${post.title!}</h4></a>
                                        <p class="ctlyt-p-text">${post.summary!}</p>
                                        <a class="blog_btn" href="${context!}/archives/${post.url!}">阅读更多</a>
                                    </div>
                                </div>
                            </article>
                        </div>
                        </#list>
                        
                        <#if posts.getTotalPages() gt 0>
                        <div class="col-lg-12">
                            <nav class="blog-pagination justify-content-center d-flex">
                                <ul class="pagination">
                                    <li class="page-item <#if posts.number gt 0><#else > is-invisible is-hidden-mobile</#if>">
                                        <a href="${context!}/page/${posts.number}" class="page-link" aria-label="上一页">
                                            <span aria-hidden="true">
                                                <span class="lnr lnr-chevron-left"></span>
                                            </span>
                                        </a>
                                    </li>
                                    <#list rainbow as r>
                                        <#if r == posts.number+1>
                                            <li class="page-item active"><a href="${context!}/page/${posts.number+1}" class="page-link">${posts.number+1}</a></li>
                                        <#else>
                                            <li class="page-item"><a href="${context!}/page/${r}" class="page-link">${r}</a></li>
                                        </#if>
                                    </#list>
                                    <li class="page-item <#if posts.getTotalPages() gt posts.number+1><#else > is-invisible is-hidden-mobile</#if>">
                                        <a href="${context!}/page/${posts.number+2}" class="page-link" aria-label="下一页">
                                            <span aria-hidden="true">
                                                <span class="lnr lnr-chevron-right"></span>
                                            </span>
                                        </a>
                                    </li>

                                </ul>
                            </nav>
                        </div>
                    </#if>
                </#if>

            </#if>
        </div>
    </div>
</section>
