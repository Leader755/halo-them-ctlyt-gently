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
                        <a href="${context!}/categories">所有分类</a>
                        <#list post.categories as category>
                            <a href="${context!}/categories/${category.slugName!}">${category.name!}</a>
                        </#list>
                       
                        <a href="${post.url!}">${post.title!}</a>
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
                <div class="level ctlyt-share" style="padding-top:90px;height: 100%;width: 30px;z-index: 100;left: 70px;">
                    <#if settings.share_type?? && settings.share_type!=''>
                        <#include "../share/${settings.share_type}.ftl">
                    </#if>
                </div>
                <div class="main_blog_details">
                <img class="img-fluid" src="${post.thumbnail!}" alt="${post.title!}">
                <a href="#"><h4>${post.title!}</h4></a>
                <div class="user_details">
                    <div class="float-left">
                        <#list tags as tag>
                            <a href="${context!}/tags/${tag.slugName!}">${tag.name!}</a>
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
                    <a href=""><i class="lnr lnr lnr-heart"></i>${post.likes!0}个人赞了</a>
                    <a class="justify-content-center ml-auto" href=""><i class="fa fa-eye"></i>${post.visits!0}</a>
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
                                <a href="${context!}/archives/${prePost.url}"><img class="img-fluid" src="${prePost.thumbnail!}" alt="${prePost.title!}"></a>
                            </div>
                            <div class="arrow">
                                <a href="${context!}/archives/${prePost.url}"><span class="lnr text-white lnr-arrow-left"></span></a>
                            </div>
                            <div class="detials">
                                <p>上一篇</p>
                                <a href="${context!}/archives/${prePost.url}"><h4>${prePost.title!}</h4></a>
                            </div>
                        </div>
                    </#if>
                    <#if nextPost??>
                        <div class="col-lg-6 col-md-6 col-12 nav-right flex-row d-flex justify-content-end align-items-center">
                            <div class="detials">
                                <p>下一篇</p>
                                <a href="${context!}/archives/${nextPost.url}"><h4>${nextPost.title!}</h4></a>
                            </div>
                            <div class="arrow">
                                <a href="${context!}/archives/${nextPost.url}"><span class="lnr text-white lnr-arrow-right"></span></a>
                            </div>
                            <div class="thumb">
                                <a href="${context!}/archives/${nextPost.url}"><img class="img-fluid" src="${nextPost.thumbnail!}" alt="${nextPost.title!}"></a>
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
                                                <a href="${context!}/archives/${post.url!}"><h3>${post.title!}</h3></a>
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
                                                <a href="${context!}/archives/${post.url!}"><h3>${post.title!}</h3></a>
                                                <p>${post.createTime?string["EEE MMM d"]}</p>
                                            </div>
                                        </div>
                                    </#if>
                                </#list>
                            </@postTag>
                            <div class="br"></div>
                        </aside>
                    </#if>
                    <div class="ctlyt-menu"></div>
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
    
<script src="${static!}/source/js/highlight.pack.js"></script>
<script>
    hljs.initHighlightingOnLoad();

    $(document).ready(function(e) {
        $("#content").children().each(function(index, element) {
            var tagName=$(this).get(0).tagName;
            if(tagName.substr(0,1).toUpperCase()=="H"){  
                var contentH=$(this).html();//获取内容
                var markid="mark-"+tagName+"-"+index.toString();
                $(this).attr("id",markid);//为当前h标签设置id
                $(".ctlyt-menu").append("<a href='#"+markid+"'>"+contentH+"</a>");//在目标DIV中添加内容   
            }  
        });

    });
        
    var $share_top = $(".ctlyt-share").offset().top;
    $(".ctlyt-share").css({'position': 'fixed',"top":"0px"});
    var $menu_top = $(".ctlyt-menu").offset().top;
    var $width =  $(window).width();
    $(window).resize(function () {  
        $width = $(window).width();
    }
    $(window).scroll(function() {
        var scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
        if($width>990){
            if($menu_top>scrollTop){
            $(".ctlyt-menu").removeAttr("style"); 
            }else{
                $(".ctlyt-menu").css({'position': 'fixed','top':'75px'});
            }
            if($share_top>scrollTop){
                $(".ctlyt-share").css({'position': 'absolute',"top":$share_top+"px","left":"-30px"});
            }else{
                $(".ctlyt-share").css({'position': 'fixed',"top":"0px","left":"-30px"});
            }
        }else{
             $(".ctlyt-share").hide();
        }
        
    })
</script>
