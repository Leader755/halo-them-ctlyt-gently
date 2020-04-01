<!--================Header Menu Area =================-->
<header class="header_area">
    <div class="main_menu">
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container box_1620">
                <!-- Brand and toggle get grouped for better mobile display -->
                <a class="navbar-brand logo_h" href="${context!}"><img src="${options.blog_logo!}" alt="${options.blog_title!}">${options.blog_title!}</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                    <ul class="nav navbar-nav menu_nav">
                        <@menuTag method="tree">
                            <#if menus?? && menus?size gt 0>
                                <#if settings.tree_menu_enable!false>
                                    <#list menus?sort_by('priority') as menu>
                                        <#if menu.children?? && menu.children?size gt 0>
                                            <li class="nav-item submenu dropdown">
                                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${menu.name!} <i class="fa fa-chevron-down"></i></a>
                                                <ul class="dropdown-menu">
                                                    <#list menu.children as child>
                                                        <li class="nav-item"><a class="nav-link" href="${child.url!}">${child.name!}</a></li>
                                                    </#list>
                                                </ul>
                                            </li> 
                                        <#else>
                                            <li class="nav-item"><a class="nav-link" href="${menu.url}" target="${menu.target!}">${menu.name}</a></li> 
                                        </#if>
                                    </#list>
                                <#else>
                                    <#if menus?? && menus?size gt 0>
                                        <#list menus?sort_by('priority') as menu>
                                            <li class="nav-item"><a class="nav-link" href="${menu.url}" target="${menu.target!}">${menu.name}</a></li> 
                                        </#list>
                                    </#if> 
                                </#if>
                            </#if>
                        </@menuTag>
                        <#if settings.head_search!true>
                            <li class="nav-item">
                                <form action="${context!}search" method="get">
                                    <aside class="single_sidebar_widget search_widget">
                                        <div class="input-group">
                                            <input type="text" name="keyword" class="form-control" placeholder="搜索内容">
                                            <span class="input-group-btn">
                                                <button class="btn btn-default" type="submit"><i class="lnr lnr-magnifier"></i></button>
                                            </span>
                                        </div><!-- /input-group -->
                                        <div class="br"></div>
                                    </aside>
                                </form>
                            </li>    
                        </#if>
                    </ul>
                    <#if  settings.plug_muc>
                    <meting-js
                        server="netease"
                        type="song"
                        id="572720628"
                    </meting-js>
                    </#if>
                    <ul class="nav navbar-nav navbar-right header_social ml-auto">
                        <#if settings.gently_github?? && settings.gently_github!=''>
                            <li class="nav-item"><a href="https://github.com/${settings.gently_github}" target="_blank"><i class="fa fa-github"></i></a></li>
                        </#if>
                        <#if settings.gently_qq?? && settings.gently_qq!=''>
                            <li class="nav-item"><a href="tencent://message/?uin=${settings.gently_qq}&Site=&Menu=yes" target="_blank"><i class="fa fa-qq"></i></a></li>
                        </#if>
                        <#if settings.gently_weibo?? && settings.gently_weibo!=''>
                            <li class="nav-item"><a href="https://weibo.com/${settings.gently_weibo}" target="_blank"><i class="fa fa-weibo"></i></a></li>
                        </#if>
                        <#if settings.gently_twitter?? && settings.gently_twitter!=''>
                            <li class="nav-item"><a href="https://twitter.com/${settings.gently_twitter}" target="_blank"><i class="fa fa-twitter"></i></a></li>
                        </#if>
                        <#if settings.gently_facebook?? && settings.gently_facebook!=''>
                            <li class="nav-item"><a href="https://www.facebook.com/${settings.gently_facebook}" target="_blank"><i class="fa fa-facebook"></i></a></li>
                        </#if>
                        <#if settings.gently_email?? && settings.gently_email!=''>
                            <li class="nav-item"><a href="mailto:${settings.gently_email}" target="_blank"><i class="fa fa-envelope"></i></a></li>
                        </#if>
                        <#if settings.gently_telegram?? && settings.gently_telegram!=''>
                            <li class="nav-item"><a href="https://t.me/${settings.gently_telegram}" target="_blank"><i class="fa fa-telegram"></i></a></li>
                        </#if>
                    </ul>
                </div> 
            </div>
        </nav>
    </div>
    <div class="logo_part">
        <div class="container">
            <a class="logo ctlyt-logo" href="${context!}"><#if (options.blog_logo)??> <img src="${options.blog_logo!}"  alt="${options.blog_title!}"></#if> ${options.blog_title!}</a>
        </div>
    </div>
</header>
<#if settings.head_nav!true>
<script src="${static!}/source/js/headnav.js"></script>
</#if>
<!--================Header Menu Area =================-->