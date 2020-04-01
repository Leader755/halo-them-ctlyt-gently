<#include "../comment.ftl">

<section class="banner_area">
    <div class="container">
        <div class="row banner_inner">
            <div class="col-lg-5"></div>
            <div class="col-lg-7">
                <div class="banner_content text-center">
                    <h2>${post.title!}</h2>
                    <div class="page_link">
                        <a href="${context!}">首页</a>
                        <a href="${context!}categories">所有分类</a>
                        <#list post.categories as category>
                            <a href="${context!}categories/${category.slug!}">${category.name!}</a>
                        </#list>
                       
                        <a href="${post.fullPath!}">${post.title!}</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="blog_area p_120 single-post-area">
    <div class="container">
        <div class="row">
 
            <div class="col-lg-9">
                <div class="main_blog_details">
                    <#if (post.thumbnail)?? >
                        <img class="img-fluid" src="${post.thumbnail!}" alt="${post.title!}">
                    </#if>
                    <a href="#"><h4>${post.title!}</h4></a>
                    <div class="user_details">
                        <div class="float-left">
                            <#list tags as tag>
                                <a href="${tag.fullPath!}">${tag.name!}</a>
                            </#list>
                        </div>
                        <div class="float-right">
                            <div class="media">
                                <div class="media-body">
                                    <h5>${user.nickname!}</h5>
                                    <p>${post.createTime?string["EEE MMM d"]}</p>
                                </div>
                                <div class="d-flex">
                                    <img src="${user.avatar!}" alt="${user.nickname!}">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="content">
                        ${post.formatContent!}
                    </div>
                    <div class="news_d_footer">
                        <a href=""><i class="lnr lnr lnr-heart"></i>${post.likes!}个人赞了</a>
                        <a class="" href=""><i class="fa fa-eye"></i>${post.visits!}</a>
                        <#if settings.share_type>
                            <div id="share"></div>
                        </#if>
                    </div>
                </div>
                <div class="navigation-area">
                    <#if settings.donate_alipay?? || settings.donate_wechat??>
                        <h3 class=" ctlyt-domate-h">喜欢这篇文章  打赏作者一下吧</h3>
                    </#if>
                    <div class="row ctlyt-domate">

                        <#if settings.donate_alipay??>
                            <img src="${settings.donate_alipay!}" alt="支付宝" />
                        </#if>
                        <#if settings.donate_wechat??>
                            <img src="${settings.donate_wechat!}" alt="微信" />
                        </#if>
                    </div>
                </div>
                <div class="navigation-area">
                    <div class="row">
                        <#if prePost??>
                            <div class="col-lg-6 col-md-6 col-12 nav-left flex-row d-flex justify-content-start align-items-center">
                                <div class="thumb">
                                    <a href="${prePost.fullPath!}"><img class="img-fluid" src="${prePost.thumbnail!}" alt="${prePost.title!}"></a>
                                </div>
                                <div class="arrow">
                                    <a href="${prePost.fullPath!}"><span class="lnr text-white lnr-arrow-left"></span></a>
                                </div>
                                <div class="detials">
                                    <p>上一篇</p>
                                    <a href="${prePost.fullPath!}"><h4>${prePost.title!}</h4></a>
                                </div>
                            </div>
                        </#if>
                        <#if nextPost??>
                            <div class="col-lg-6 col-md-6 col-12 nav-right flex-row d-flex justify-content-end align-items-center">
                                <div class="detials">
                                    <p>下一篇</p>
                                    <a href="${nextPost.fullPath!}"><h4>${nextPost.title!}</h4></a>
                                </div>
                                <div class="arrow">
                                    <a href="${nextPost.fullPath!}"><span class="lnr text-white lnr-arrow-right"></span></a>
                                </div>
                                <div class="thumb">
                                    <a href="${nextPost.fullPath!}"><img class="img-fluid" src="${nextPost.thumbnail!}" alt="${nextPost.title!}"></a>
                                </div>										
                            </div>	
                        </#if>							
                    </div>
                </div>
                <div class="comment-form">
                    <h4>评论</h4>
                    <@comment post,"post" />
                </div>
            </div>
            <div class="col-lg-3">
                <div class="blog_right_sidebar">
                    <#if categories?exists && categories?size gt 0>
                        <aside class="single_sidebar_widget popular_post_widget">
                            <h3 class="widget_title">相关推荐</h3>
                            <@postTag method="listByCategoryId" categoryId="${categories[0].id}">
                                <#list posts as post>
                                    <#if post_index lt 3>
                                        <div class="media post_item">
                                            <div class="media-body">
                                                <a href="${post.fullPath!}"><h3>${post.title!}</h3></a>
                                                <p>${post.createTime?string["EEE MMM d"]}</p>
                                            </div>
                                        </div>
                                    </#if>
                                </#list>
                            </@postTag>
                            <div class="br"></div>
                        </aside>
                    </#if>
                    <#if tags?exists && tags?size gt 0>
                        <aside class="single_sidebar_widget popular_post_widget">
                            <h3 class="widget_title">相关文章</h3>
                            <@postTag method="listByTagId" tagId="${tags[0].id}">
                                <#list posts as post>
                                    <#if post_index lt 3>
                                        <div class="media post_item">
                                            <div class="media-body">
                                                <a href="${post.fullPath!}"><h3>${post.title!}</h3></a>
                                                <p>${post.createTime?string["EEE MMM d"]}</p>
                                            </div>
                                        </div>
                                    </#if>
                                </#list>
                            </@postTag>
                            <div class="br"></div>
                        </aside>
                    </#if>
                    <ul class="ctlyt-menu"></ul>
                </div>
            </div>
        </div>
    </div>
</section>
<#if settings.code_style?? && settings.code_style!=''>
    <link rel="stylesheet"
        href="${static!}/source/css/${settings.code_style!}.css">
<#else>
    <link rel="stylesheet"
    href="${static!}/source/css/monokai.css">
</#if>
<#--  代码高亮  -->
<script src="${static!}/source/js/highlight.pack.js"></script>
<script src="${static!}/source/js/jquery.share.min.js"></script>
<script>
    hljs.initHighlightingOnLoad();
    //显示行号
    hljs.initLineNumbersOnLoad();

    $('#share').share({sites: [${settings.share_build!} ]});
    
    $(document).ready(function(e) {
        $("#content").children().each(function(index, element) {
            var tagName=$(this).get(0).tagName;
            if(tagName.substr(0,1).toUpperCase()=="H"){  
                var contentH=$(this).html();//获取内容
                var markid="mark-"+tagName+"-"+index.toString();
                $(this).attr("id",markid);//为当前h标签设置id
                $(".ctlyt-menu").append("<li onclick='btn(#"+markid+")' class='menu-item' >"+contentH+"</li>");//在目标DIV中添加内容   
            }  
        });

    });

    var $menu_top = $(".ctlyt-menu").offset().top;
    var $width =  $(window).width();
    $(window).resize(function(){ 
        $width =  $(window).width();
        if($width>990){
            $(".ctlyt-menu").css({'position': 'fixed','top':'75px'});
        }else{
            $(".ctlyt-menu").removeAttr("style"); 
        }
    });

    $(window).scroll(function() {
        if($width>990){
            var scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
            if($menu_top>scrollTop){
                $(".ctlyt-menu").removeAttr("style"); 
            }else{
                $(".ctlyt-menu").css({'position': 'fixed','top':'75px'});
            }
        }
    })

    function btn (u){
        document.getElementById(u);
         $('html, body').animate({scrollTop: $(u).offset().top}, 1000)
    })

</script>
