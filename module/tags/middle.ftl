<section class="banner_area">
    <div class="container">
        <div class="row banner_inner">
            <div class="col-lg-5"></div>
            <div class="col-lg-7">
                <div class="banner_content text-center">
                    <h2>所有标签</h2>
                    <div class="page_link">
                        <a href="${context!}">主页</a>
                        <a href="#">所有标签</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="blog_area p_120">
    <div class="container">
        <div class="row">
            <@tagTag method="list">
                <#list tags as tag>
                     <#if tag.postCount gt 0 >
                        <div class="col-lg-3">
                            <article class="blog_style1 small">
                                <div class="blog_img">
                                    <img class="img-fluid" src="<#if (tag.thumbnail)??>${tag.thumbnail}<#else>${(settings.other_bg)!static+'/source/img/bg.png'}</#if>" alt="${tag.slugName}">
                                </div>
                                <div class="blog_text">
                                    <div class="blog_text_inner">
                                        <div class="cat">
                                            <a href="#"><i class="fa fa-file-text-o" aria-hidden="true"></i>${tag.postCount!}</a>
                                        </div>
                                        <a href="${context!}/tags/${tag.slugName!}"><h4>${tag.name}</h4></a>
                                        <a class="blog_btn" href="${context!}/tags/${tag.slugName!}">看标签</a>
                                    </div>
                                </div>
                            </article>
                        </div>
                     </#if>
                </#list>
            </@tagTag>
        </div>
    </div>
</section>