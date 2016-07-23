<!-- IF !config.loggedIn -->
<!--
<script>
$(window).on('action:ajaxify.start', function() { 
	$("html").removeClass("is-hidden");
});
$(window).on('action:ajaxify.end', function() { 
	$("html").addClass("is-hidden");
});
</script>
-->
<div class="content-notloggedin-cover">
<div class="container">
<div class="col-xs-12 col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2">
<div class="content-notloggedin-welcome clearfix">
<small class="content-notloggedin-intro">Beta</small>
<div class="content-notloggedin-logo">Convoe</div>
<h1 class="content-notloggedin-welcome-message">Your source for <span class="js-notloggedin-is"></span></h1>
<h2 class="content-notloggedin-welcome-description">The internet's most interesting news, videos, celebrity gossip, and discussions all in one place. Join today for free!</h2>
<div class="content-notloggedin-action">
<a href="{config.relative_path}/auth/twitter/callback" class="btn btn-notloggedin-sso"><i class="fa fa-twitter"></i> Twitter</a>
<a href="{config.relative_path}/auth/facebook/callback" class="btn btn-notloggedin-sso"><i class="fa fa-facebook"></i> Facebook</a>
<a href="{config.relative_path}/auth/google/callback" class="btn btn-notloggedin-sso"><i class="fa fa-google"></i> Google</a>
</div>
<div class="content-notloggedin-action-block">
<div class="btn-group">
<a href="{config.relative_path}/register" class="btn btn-link btn-notloggedin-link">Continue with Email</a>
<a href="#" class="btn btn-link btn-notloggedin-link js-btn-notloggedin-remove">Nah, maybe later</a>
</div></div>
</div>
</div>
</div>
<div class="content-notloggedin-footer">
<ul>
<li><a href="#" title="What is Convoe?">Learn more about Convoe</a></li>
<li><a href="#" title="Learn how to use Convoe">Help &amp; FAQ</a></li>
<li><a href="#">Work with us</a></li>
</ul>
</div>
</div> 
<div class="content-notloggedin">
	<div class="content-notloggedin-message">Sign up to see more stories and experience all of Convoe.</div>
	<div class="content-notloggedin-block">
		<a class="btn btn-lg btn-notloggedin-register" href="{config.relative_path}/register">Register</a>
		<a class="btn btn-lg btn-notloggedin-login" href="{config.relative_path}/login">Login</a>
	</div>
</div>
<!-- ENDIF !config.loggedIn -->

<div class="content-wrapper">
	<div class="content-inner alternative">
		<div class="container">
			<!-- IMPORT partials/breadcrumbs.tpl -->
		</div>
	</div>
</div>

<ul class="categories" itemscope itemtype="http://www.schema.org/ItemList">
	<div class="container">
	<div class="row">
	<!-- BEGIN categories -->
		<div class="col-xs-12 col-sm-6 col-md-6">
			<div class="row">
				<!-- IMPORT partials/categories/item.tpl -->
			</div>
		</div>
	<!-- END categories -->
	</div>
	</div>
</ul>
