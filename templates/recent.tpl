<div class="content-wrapper _has-color">
	<div class="content-inner alternative">
		<div class="container">
			<!-- IMPORT partials/breadcrumbs.tpl -->
		</div>
	</div>
	<div class="content-inner">
		<div class="container">
			<div class="clearfix">
				<h2 class="hidden-xs content-title">Recent</h2>
				<div class="btn-wrap">
					<i class="add"></i>
					<!-- IF loggedIn -->
					<button id="new_topic" 
						class="btn btn-circle btn-primary">[[category:new_topic_button]]</button>
					<!-- ELSE -->
					<a href="{config.relative_path}/login" 
						class="btn btn-circle btn-primary">[[category:guest-login-post]]</a>
					<!-- ENDIF loggedIn -->
				</div>
			</div>
		</div>
	</div>
</div>

<div class="recent container">
	<div class="category">
		<!-- IF !topics.length -->
		<div class="alert alert-warning" id="category-no-topics">[[recent:no_recent_topics]]</div>
		<!-- ENDIF !topics.length -->

		<a href="{config.relative_path}/recent">
			<div class="alert alert-warning hide" id="new-topics-alert"></div>
		</a>

		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12 category-topics-list">
				<!-- IMPORT partials/topics_list.tpl -->
			</div>
			<!-- <div class="col-xs-12 col-sm-12 col-md-3"></div> -->
		</div>
	</div>
</div>