{* PTW - 2014-11-14 Added Ini setting switch to allow this to be turned off via content.ini custom setting *}
{if eq( ezini( 'article', 'ShowSocialButtonsinFooter', 'content.ini' ), 'enabled' )}
{* <div class="social-button">
    <a href="https://twitter.com/share" class="twitter-share-button" data-hashtags="OnlineRSA">Tweet</a>
    {literal}<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>{/literal}
</div> *}
<div class="social-button">
    {* <div class="fb-like" data-send="false" data-layout="button_count" data-width="90" data-show-faces="false"></div>*}
    {* Added PTW 2014-11-26 - ACM-provided code *}
    <div class="fb-follow" data-href="https://www.facebook.com/pages/Online-RSA/327969210721484" data-colorscheme="light" data-layout="standard" data-show-faces="true"></div>
    <div id="fb-root"></div>
    {literal}
    <script>(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
    {/literal}
</div>
{* <div class="social-button">
    <div class="g-plusone" data-size="medium"></div>

    <script type="text/javascript">
        {literal}
        (function() {
        var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
        po.src = 'https://apis.google.com/js/plusone.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
        })();
        {/literal}
    </script>
</div> *}
{/if}
