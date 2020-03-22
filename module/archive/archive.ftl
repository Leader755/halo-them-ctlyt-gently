<section class="banner_area">
    <div class="container">
        <div class="row banner_inner">
            <div class="col-lg-5"></div>
            <div class="col-lg-7">
                <div class="banner_content text-center">
                    <h2>归档</h2>
                    <div class="page_link">
                        <a href="${context!}">主页</a>
                        <a href="#">归档</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="blog_area p_120">
    <div class="container">
        <div class="row"> 
            <@postTag method="archiveYear">
                <div class="panel-group col-lg-12" id="accordion">
                    <#list archives as archive>
                    
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <a data-toggle="collapse" data-parent="#accordion" 
                                        href="#a${archive.year?c}">
                                    <h4 class="panel-title">
                                    
                                            ${archive.year?c}
                                        
                                    </h4>
                                </a>
                            </div>
                            <div id="a${archive.year?c}" class="panel-collapse collapse in">           
                                <#list archive.posts as post>
                                    <div class="col-lg-12">
                                        <article class="blog_style1">
                                            <div class="ctlyt-search-blog">
                                            </div>
                                            <div class="blog_text">
                                                <div class="blog_text_inner">
                                                    <div class="cat">
                                                        <span><i class="fa fa-calendar" aria-hidden="true"></i> ${post.createTime?string["EEE MMM d"]}</span>
                                                        <span><i class="fa fa-eye" aria-hidden="true"></i> ${post.visits!0}</span>
                                                    </div>
                                                    <a href="${context!}archives/${post.url!}"><h4>${post.title!}</h4></a>
                                                    <p class="ctlyt-p-text">${post.summary!}</p>
                                                    <a class="blog_btn" href="${context!}archives/${post.url!}">阅读更多</a>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                </#list>
                            </div>
                        </div>
                    </#list>
                </div>
            </@postTag>
        </div>
    </div>
</section>