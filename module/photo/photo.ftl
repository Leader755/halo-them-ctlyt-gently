<section class="banner_area">
    <div class="container">
        <div class="row banner_inner">
            <div class="col-lg-5"></div>
            <div class="col-lg-7">
                <div class="banner_content text-center">
                    <h2>图库</h2>
                    <div class="page_link">
                        <a href="${context!}">主页</a>
                        <a href="#">图库</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="whole-wrap">
    <div class="container">
        <div class="section-top-border">
            <@photoTag method="listTeams">
                <#list teams as item>
                    <h3 class="title_color">${item.team}</h3>
                    <div class="row gallery-item">
                        <#list item.photos as photo>
                            <div class="col-md-4">
                                <a href="${photo.url}" class="img-gal"><div class="single-gallery-image" style="background: url(${photo.thumbnail});"></div></a>
                            </div>
                        </#list>
                    </div>
                </#list>

            </@photoTag>
        </div>
    </div>
</div>