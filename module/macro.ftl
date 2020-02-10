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


    <style>
        .logo_h{
            font-weight: bold;
        }
        .logo_h>img{
            height:40px;
            width: 40px !important;
            border-radius: 20px;
            margin-right: 20px;
        }

        .ctlyt-logo {
            font-weight: bold;
            font-size: 26px;
            color: #000;
        }
        .ctlyt-logo>img{
            height:60px;
            border-radius: 30px;
            margin-right: 20px;
        }
        .ctlyt-buttom-links{
            height:60px;
            width:60px;
            background-color: #fff;
        }
        .ctlyt-p-text{
            word-wrap: break-word;
        }
        .ctlyt-search-blog{
            height:100px;
        }
        .search_widget{
            margin:2px 20px;
        }
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
        .img-width{
            flex-grow: 0;
            flex-shrink: 0;
            width: 100px;
            height: 100px;
        }
        .is-invisible,.is-hidden-mobile{
            display: none;
        }
        blockquote {
            border-left: 0.2rem solid #007bff;
            padding-left: 1rem;
            background-color: #f9f9ff;
            padding-top: 1rem;
            padding-bottom: 1rem;
        }
        blockquote img,img{
            max-width: 100%;
        }
        .thumb>a>img{
            flex-grow: 0;
            flex-shrink: 0;
            width: 100px;
            height: 100px;
        }
        .ctlyt-domate{
            justify-content: center;
        }
        .ctlyt-domate img{
            margin: 5px 40px;
            width: 40%;
			height: 50%
        }
        .ctlyt-domate-h{
            text-align: center;
        }
        /* 回顶部 */
        .actGotop{position:fixed; _position:absolute; bottom:1rem; right:0.5rem; width:150px; height:195px; display:none;z-index:100}
        .actGotop a,.actGotop a:link{width:150px;height:195px;display:inline-block; background:url(${static!}/source/img/gotop.png) no-repeat; _background:url(${static!}/source/img/gotop.gif) no-repeat; outline:none;}
        .actGotop a:hover{width:150px; height:195px; background:url(${static!}/source/img/gotopd.gif) no-repeat; outline:none;}

        /*  导航目录 */
        .menu{
            display: flex;
            flex-direction: row-reverse;
            flex-wrap: wrap;
            justify-content: start;
        }
        .menu>a{
            color: #000;
            font-size:14px;
            font-weight: bold;
            width: 100%;
        }
        .menu [href|='#mark-H1']{
            font-size:16px;
        }
        .menu [href|='#mark-H2']{
            font-size:15px;
            padding-left: 5px;
        }
        .menu [href|='#mark-H3']{
            font-size:14px;
            padding-left: 10px;
        }
        .menu [href|='#mark-H4']{
            font-size:13px;
            padding-left: 15px;
        }
        .menu [href|='#mark-H5']{
            font-size:12px;
            padding-left: 20px;
        }
        .menu [href|='#mark-H6']{
            font-size:11px;
            padding-left: 25px;
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
