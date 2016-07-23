<div class="content-wrapper _has-color">
	<div class="content-inner alternative">
		<div class="container">
			<!-- IMPORT partials/breadcrumbs.tpl -->
		</div>
	</div>
	<div class="content-inner no-padding-bottom">
		<div class="container">
			<div class="clearfix">
				<h2 class="hidden-xs content-title">{title}</h2>
			</div>
			<ul class="navigation" component="popular/tab">
				<li><a href='{config.relative_path}/popular/daily'>[[recent:day]]</a></li>
				<li><a href='{config.relative_path}/popular/weekly'>[[recent:week]]</a></li>
				<li><a href='{config.relative_path}/popular/monthly'>[[recent:month]]</a></li>
			</ul>
		</div>
	</div>
</div>

<div class="popular container">
	<div class="category">
		<!-- IF !topics.length -->
		<div class="alert alert-warning" id="category-no-topics">[[recent:no_popular_topics]]</div>
		<!-- ENDIF !topics.length -->

		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12 category-topics-list">
			<!-- IMPORT partials/topics_list.tpl -->
			</div>
			<!-- <div class="col-xs-12 col-sm-12 col-md-3"></div> -->
		</div>
	</div>
</div>