<#macro comment post,type>
    <#if !post.disallowComment!false>
        <script src="${static!}/source/js/vue.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/halo-comment-normal@1.1.1/dist/halo-comment.min.js"></script>
        <halo-comment id="${post.id}" type="${type}"/>
    </#if>
    <style>
        .halo-comment .comment-placeholder {
            border: none !important;
            position: relative !important;
          	z-index: 99;
        }
        .comment-item-content img {
            width: 100%;
        }
    </style>
</#macro>