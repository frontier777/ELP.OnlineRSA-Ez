{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{*?template charset=latin1?*}
{* 2015-03-10 PTW Disabled the following, set to false *}
{*default enable_print=true()*}
{default enable_print=false()}

<link rel="Home" href={"/"|ezurl} title="{'%sitetitle front page'|i18n('design/standard/layout',,hash('%sitetitle',$site.title))|wash}" />
<link rel="Index" href={"/"|ezurl} />
<link rel="Top"  href={"/"|ezurl} title="{$site_title}" />
<link rel="Search" href={"content/advancedsearch"|ezurl} title="{'Search %sitetitle'|i18n('design/standard/layout',,hash('%sitetitle',$site.title))|wash}" />
<link rel="Shortcut icon" href={"favicon.ico"|ezimage} type="image/x-icon" />
<link rel="Copyright" href={"/ezinfo/copyright"|ezurl} />
<link rel="Author" href={"/ezinfo/about"|ezurl} />

{if $enable_print}
{* Add print <link> tag in JS to be cache safe with query string (not included in cache-block key by default in pagelayout) *}
<script type="text/javascript">
(function() {ldelim}

    var head = document.getElementsByTagName('head')[0];
    var printNode = document.createElement('link');
    printNode.rel = 'Alternate';
    printNode.href = "{concat( 'layout/set/print/', $site.uri.original_uri )|ezurl( 'no' )}" + document.location.search;
    printNode.media = 'print';
    printNode.title = "{'Printable version'|i18n('design/ezwebin/link')}";
    head.appendChild(printNode);

{rdelim})();
</script>
{/if}

{/default}
