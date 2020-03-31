<#macro head title,keywords,description>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"/>
    <title>${title!}</title>
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="renderer" content="webkit">
    <meta name="theme-color" content="${settings.google_color!'#fff'}">
    <meta name="title" content="${title}" />
    <meta name="author" content="${user.nickname!}" />
    <meta name="keywords" content="${keywords!}"/>
    <meta name="description" content="${description!}" />
    <@global.head />
     <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${static!}/source/css/bootstrap.css">
    <link rel="stylesheet" href="${static!}/source/vendors/linericon/style.css">
    <link rel="stylesheet" href="${static!}/source/css/font-awesome.min.css">
    <link rel="stylesheet" href="${static!}/source/vendors/owl-carousel/owl.carousel.min.css">
    <link rel="stylesheet" href="${static!}/source/vendors/lightbox/simpleLightbox.css">
    <link rel="stylesheet" href="${static!}/source/vendors/nice-select/css/nice-select.css">
    <link rel="stylesheet" href="${static!}/source/vendors/animate-css/animate.css">
    <link rel="stylesheet" href="${static!}/source/vendors/jquery-ui/jquery-ui.css">
    <!-- main css -->
    <link rel="stylesheet" href="${static!}/source/css/style.css">
    <link rel="stylesheet" href="${static!}/source/css/responsive.css">

    <link rel="stylesheet" href="${static!}/source/css/share.min.css">
    <link rel="stylesheet" href="${static!}/source/css/other.css">

    

    <#if  settings.darkly_there==true>
        <#if .now?string("HH")?eval lt 7 || .now?string("HH")?eval gt 19 >
        
        <link rel="stylesheet" type="text/css" href="${static!}/source/css/darkly-there.css" />
        </#if>
    </#if>
    

    
    <style>
        .home_banner_area{
            background: url(${(settings.banner_bg)!static+'/source/img/bg.png'}) no-repeat scroll center left;          
            background-size: auto;
        }
        .banner_area {
            position: relative;
            z-index: 1;
            background: url(${(settings.other_banner_bg)!static+'/source/img/bg.png'}) no-repeat scroll center left;
            background-color: #f9f9ff;
            background-size: auto;
        }
        <#if !settings.head_nav>
            .header_area {
                position: absolute;
            }
        </#if>
        .blog_box{
            height:100px;
        }


    </style>
    <script src="${static!}/source/js/jquery-3.2.1.min.js"></script>
</head>
<body>
</#macro>
<#macro footer>
    <#include "footer.ftl" />
</body>
</html>
</#macro>
