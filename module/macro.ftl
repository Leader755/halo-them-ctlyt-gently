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

    
    <!--  暗黑样式  -->
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
        /*  小女孩插件  */
        <#if  settings.min_girl>
            #matrix{
                position: fixed; top:0; left: 0; z-index: -1; opacity:0.8;
            }
            canvas#live2dcanvas {
                border: 0 !important;
                left: 0;
            }
        </#if>
        .blog_box{
            height:100px;
        }


    </style>
    <#if  settings.min_girl>
        <script type="text/javascript">

            //文字
            var txts = "0123456789!@#$%^&*()~_+℃☆○※";
            //转为数组
            txts = txts.split("");
            var matrix=document.getElementById("matrix");
            var context=matrix.getContext("2d");
            matrix.height=window.innerHeight;
            matrix.width=window.innerWidth;
            var drop=[];
            var font_size=16;
            var columns=matrix.width/font_size;
            for(var i=0;i<columns;i++)
                drop[i]=1;

            function drawMatrix(){

                context.fillStyle="rgba(0, 0, 0, 0.09)";
                context.fillRect(0,0,matrix.width,matrix.height);


                context.fillStyle="green";
                context.font=font_size+"px";
                for(var i=0;i<columns;i++){
                    //随机取要输出的文字
                    var text = txts[Math.floor(Math.random()*txts.length)];
                    //输出文字，注意坐标的计算
                    context.fillText(text,i*font_size,drop[i]*font_size);/*get 0 and 1*/

                    if(drop[i]*font_size>(matrix.height*2/3)&&Math.random()>0.95)/*reset*/
                        drop[i]=0;
                    drop[i]++;
                }
            }
            setInterval(drawMatrix,33);
        </script>
        <script src="https://cdn.jsdelivr.net/npm/live2d-widget@3.0.4/lib/L2Dwidget.min.js"></script>
        <script type="text/javascript">
                L2Dwidget.init();
        </script>
    </#if>
    <script src="${static!}/source/js/jquery-3.2.1.min.js"></script>
</head>
<body>
<#if  settings.min_girl>
    <canvas id="matrix"></canvas>
</#if>
</#macro>
<#macro footer>
    <#include "footer.ftl" />
</body>
</html>
</#macro>
