<div class="content-wrapper _has-color">
	<div class="content-inner alternative">
		<div class="container">
			<!-- IMPORT partials/breadcrumbs.tpl -->
		</div>
	</div>
	<div class="content-inner">
		<div class="container">
			<div class="clearfix">
				<h2 class="hidden-xs content-title">{name}</h2>
				<p class="hidden content-description">{description}</p>
				<!-- IF privileges.topics:create -->
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
				<!-- ENDIF privileges.topics:create -->
			</div>
		</div>
	</div>
</div>

<div class="category container">
	<!-- //IMPORT partials/category/subcategory.tpl -->
	
	<div class="btn-wrapper clearfix">
		<span class="btn-wrap-center">
			<!-- IMPORT partials/category/watch.tpl -->
			<!-- IMPORT partials/category/tools.tpl -->
			<!-- IMPORT partials/category/sort.tpl -->
		</span>
	</div>
		
	<!-- IF children.length -->
	<!-- ENDIF children.length -->


	<!-- IF !topics.length -->
	<div class="alert alert-warning" id="category-no-topics">
		[[category:no_topics]]
	</div>
	<!-- ENDIF !topics.length -->

	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-12 category-topics-list">
			<!-- IMPORT partials/topics_list.tpl -->
			
			<!-- IF config.usePagination -->
				<!-- IMPORT partials/paginator.tpl -->
			<!-- ENDIF config.usePagination -->
		</div>
		<!-- <div class="col-xs-12 col-sm-12 col-md-3"></div> -->
	</div>
	
</div>

<!-- IMPORT partials/move_thread_modal.tpl -->

<!-- IF !config.usePagination -->
<noscript>
	<!-- IMPORT partials/paginator.tpl -->
</noscript>
<!-- ENDIF !config.usePagination -->

