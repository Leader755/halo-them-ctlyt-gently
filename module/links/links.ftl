<section class="banner_area">
    <div class="container">
        <div class="row banner_inner">
            <div class="col-lg-5"></div>
            <div class="col-lg-7">
                <div class="banner_content text-center">
                    <h2>友情链接</h2>
                    <div class="page_link">
                        <a href="${context!}">主页</a>
                        <a href="#">友情链接</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="blog_area p_120">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <article class="blog_style1 small">
                    <div class="blog_text">
                        <div class="blog_text_inner" style="margin-top: 0px;">
                            <h4>留言格式：</h4>
                            <p>站点名称：${options.blog_title!}</p>
                            <p>站点描述：${user.description!}</p>
                            <p>站点网址：${context!}</p>
                            <p>LOGO：${context!}avatar</p>
                        </div>
                    </div>
                </article>
            </div>
            <@linkTag method="list">
                <#if links?? && links?size gt 0>
                    <#list links as link>
                        <div class="col-lg-3">
                            <article class="blog_style1 small">
                                <div class="blog_img">
                                    <img class="img-fluid" style="min-height: 225px;" src="${link.logo!}" alt="${link.description!}">
                                </div>
                                <div class="blog_text">
                                    <div class="blog_text_inner">
                                        <a href="${link.url!}" target="_blank"><h5 style="color: #000">${link.name!}</h5></a>
                                        <p class="ctlyt-p-text">${link.description!}</p>
                                        <a class="blog_btn" href="${link.url!}" target="_blank">去看看</a>
                                    </div>
                                </div>
                            </article>
                        </div>
                    </#list>
                </#if>
            </@linkTag>
      </div>
    </div>
</section>