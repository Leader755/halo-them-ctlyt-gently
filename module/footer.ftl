<!--================ start footer Area  =================-->	
<footer class="footer-area p_120">
    <div class="container">
        <div class="row">
            <div class="col-lg-3  col-md-6 col-sm-6">
                <div class="single-footer-widget">
                    <h6 class="footer_title">关于我</h6>
                    <p>${user.description!}</p>
                </div>
            </div>
            <div class="col-lg-7 col-md-6 col-sm-6">
                <div class="single-footer-widget instafeed">
                    <h6 class="footer_title"><a href="${context!}/links" style="color:#FFF">友情链接</a></h6>
                    <@linkTag method="list">
	                    <#if links?? && links?size gt 0>
                            <ul class="list instafeed d-flex flex-wrap">
                                <li><a href="http://ctlyt.yunypan.cn" target="_blank"><img class="ctlyt-buttom-links" src="http://ctlyt.yunypan.cn/avatar" alt="村头老杨头"></a></li>
                                <#list links as link>
                                    <li><a href="${link.url!}" target="_blank" ><img class="ctlyt-buttom-links" src="${link.logo!}" alt="${link.name!}"></a></li>
                                </#list>
                            </ul>
                        </#if>
                    </@linkTag>
                </div>
            </div>	
            <div class="col-lg-2 col-md-6 col-sm-6">
                <div class="single-footer-widget f_social_wd">
                    <h6 class="footer_title">关注我</h6>
                    <p>${user.nickname!}</p>
                    <div class="f_social">
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
                    </div>
                    <div>
                        ${settings.links_footer!}
                    </div>
                </div>
            </div>						
        </div>
        <div class="row footer-bottom d-flex justify-content-between align-items-center">
            <p class="col-lg-12 footer-text text-center">
Copyright &copy;<script>document.write(new Date().getFullYear());</script> ${options.blog_footer_info!}
</p>
        </div>
    </div>
    <#--  回顶部  -->
    <script src="${static!}/source/js/yestop.js"></script>
    <script>
            $(document).ready(function () {
                $.fn.yestop({
                    "yes_image": "", "yes_radius": "30%"
                    , "yes_html": "<i class='fa fa-arrow-up' aria-hidden='true'></i>","yes_backColor":"white","yes_hoverHtml":"回顶部"
                });
            })
    </script>
</footer>
<!--================ End footer Area  =================-->