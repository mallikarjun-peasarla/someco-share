<@markup id="css">
<@link rel="stylesheet" type="text/css"
href="${url.context}/res/components/dashlets/whitepaper.css"
group="dashlets"/>
</@>
<@markup id="html">
<@uniqueIdDiv>
<#assign id = args.htmlid?html>
<#assign dashboardconfig=config.scoped['Dashboard']['dashboard']>
<div class="dashlet">
<div class="title">${msg("someco.whitepaper.dashletName")}</div>
<div id="${id}-whitepapers" class="body scrollableList" <#if
args.height??>style
="height: ${args.height?html}px;"</#if>>
    <#list items as item>
    <p valign="top" class="whitepaper">
    <a href="${url.context}/page/site/${item.site.shortName}/document-
    details?nodeRef=${item.nodeRef}">
    ${item.displayName}
    </a>
    </p>
    </#list>
</div>
</div>
</@>
</@>