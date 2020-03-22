<section class="banner_area">
    <div class="container">
        <div class="row banner_inner">
            <div class="col-lg-5"></div>
            <div class="col-lg-7">
                <div class="banner_content text-center">
                    <h2>所有分类</h2>
                    <div class="page_link">
                        <a href="${context!}">主页</a>
                        <a href="#">所有分类</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="blog_area p_120">
    <div class="container">
        <div class="row">  
            <@categoryTag method="list">
                <#list categories as category>
                    <#if category.postCount gt 0 >
                        <div class="col-lg-3">
                            <article class="blog_style1 small">
                                <div class="blog_img">
                                <#if (category.thumbnail)?? && category.thumbnail!=''>
                                    <img class="img-fluid" src="${category.thumbnail}" alt="${category.description}">
                                <#else>
                                    <img class="img-fluid" src="${(settings.other_bg)!static+'/source/img/bg.png'}" alt="${category.description}">
                                </#if>
                                </div>
                                <div class="blog_text">
                                    <div class="blog_text_inner">
                                        <div class="cat">
                                            <a href="#"><i class="fa fa-file-text-o" aria-hidden="true"></i>${category.postCount!}</a>
                                        </div>
                                        <a href="${context!}categories/${category.slugName!}"><h4>${category.name!}</h4></a>
                                        <p class="ctlyt-p-text">${category.description}</p>
                                        <a class="blog_btn" href="${context!}categories/${category.slugName!}">看分类</a>
                                    </div>
                                </div>
                            </article>
                        </div>
                    </#if>
                </#list>
            </@categoryTag> 
        </div>
    </div>
</section>