<div class="content-wrapper">
	<div class="content-inner alternative">
		<div class="container">
			<!-- IMPORT partials/breadcrumbs.tpl -->
		</div>
	</div>
	<div class="content-inner colorless">
		<div class="container">
			<div class="clearfix" component="topic" data-tid="{tid}">
				<!-- BEGIN posts -->
				<!-- IF @first -->
				<div component="post" <!-- IMPORT partials/data/topic.tpl -->>
				<h1 component="post/header" class="content-title" itemprop="name">
					
					<div class="topic-vote" component="topic" data-tid="{tid}">
					
					<div component="post" <!-- IMPORT partials/data/topic.tpl -->>
							<!-- IF !reputation:disabled -->
							<span class="votes<!-- IF posts.upvoted --> upvoted<!-- ENDIF posts.upvoted --><!-- IF posts.downvoted --> downvoted<!-- ENDIF posts.downvoted -->">
								<a component="post/upvote" href="#" 
									class="<!-- IF posts.upvoted -->upvoted<!-- ENDIF posts.upvoted -->">
									<i class="material-icons">arrow_drop_up</i>
								</a>
					
								<span component="post/vote-count" data-votes="{posts.votes}">{posts.votes}</span>
					
								<!-- IF !downvote:disabled -->
								<a component="post/downvote" href="#" 
									class="<!-- IF posts.downvoted -->downvoted<!-- ENDIF posts.downvoted -->">
									<i class="material-icons">arrow_drop_down</i>
								</a>
								<!-- ENDIF !downvote:disabled -->
							</span>
							<!-- ENDIF !reputation:disabled -->
							
							<div class="topic-favourite">
							<a component="post/favourite"  href="#" data-favourited="{posts.favourited}">
							<i component="post/favourite/on" 
							class="material-icons <!-- IF !posts.favourited -->hidden<!-- ENDIF !posts.favourited -->">favorite</i>
							<i component="post/favourite/off" 
							class="material-icons <!-- IF posts.favourited -->hidden<!-- ENDIF posts.favourited -->">favorite_border</i>
								<span component="post/favourite-count" class="favouriteCount" 
								data-favourites="{posts.reputation}">{posts.reputation}</span>
							</a>
							</div>
							</li>
					</div>
					
					</div>
					<div class="topic-title" component="topic/title">
					<div class="topic-status hidden">
						<div class="pin <!-- IF !pinned -->hidden<!-- ENDIF !pinned -->">
							<div class="pin-text pin-text-wrapper">Pinned</div></div>
						<div class="lock <!-- IF !locked -->hidden<!-- ENDIF !locked -->">
							<div class="lock-text lock-text-wrapper">Locked</div></div>
					</div>
						
					<span class="topic-name">
						{title}
					</span>
					
					<div class="topic-meta clearfix">
						<div class="topic-avatar">
							<a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">
								<!-- IF posts.user.picture -->
								<img component="user/picture" data-uid="{posts.user.uid}" src="{posts.user.picture}" align="left" itemprop="image" />
								<!-- ELSE -->
								<div component="user/picture" data-uid="{posts.user.uid}" class="user-icon" style="background-color: {posts.user.icon:bgColor};">{posts.user.icon:text}</div>
								<!-- ENDIF posts.user.picture -->
								<i component="user/status" class="fa fa-circle status {posts.user.status}" title="[[global:{posts.user.status}]]"></i>
					
							</a>
						</div>
						<div class="topic-info">
							<a class="permalink" href="{config.relative_path}/topic/{slug}/{function.getBookmarkFromIndex}"><span class="timeago" title="{posts.timestampISO}"></span></a><small data-editor="{posts.editor.userslug}" component="post/editor" class="hidden">[[global:last_edited_by, {posts.editor.username}]] <span class="timeago" title="{posts.editedISO}"></span></small> <a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->" itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}">from <strong>{posts.user.username}</strong></a><i class="bullet"></i><small class="views">{viewcount} views</small><!-- IF !posts.deleted --><!-- IF config.loggedIn --><i class="bullet"></i><small component="post/tools"><a component="post/flag" href="#">[[topic:flag_title]]</a></small><!-- ENDIF config.loggedIn --><!-- ENDIF !posts.deleted -->
							
							<span component="post/tools" class="dropdown moderator-tools <!-- IF !posts.display_post_menu -->hidden<!-- ENDIF !posts.display_post_menu -->">
								<a href="#" data-toggle="dropdown"><i class="dots"></i></a>
								<ul class="dropdown-menu dropdown-menu-right" role="menu">
									<!-- IMPORT partials/topic/topic-menu-list.tpl -->
								</ul>
							</span>
	
						</div>
					</div>
					
					</div>
					<div class="browsing-users hidden hidden-xs hidden-sm pull-right">
						<span>[[category:browsing]]</span>
						<div component="topic/browsing/list" class="thread_active_users active-users inline-block"></div>
						<small class="hidden">
							<i class="fa fa-users"></i> <span component="topic/browsing/count" class="user-count"></span>
						</small>
					</div>
				</h1>
				
				<div class="content-content" component="post/content">
					<div class="topic-content" itemprop="text">
						{posts.content}
					</div>
					<div class="topic-tags">
						<!-- BEGIN tags -->
						<a href="{config.relative_path}/tags/{tags.value}" style="<!-- IF tags.color -->color: {tags.color};<!-- ENDIF tags.color --><!-- IF tags.bgColor -->background-color:{tags.bgColor};border-color:{tags.bgColor};<!-- ENDIF tags.bgColor -->">
						<span class="topic-tag-item" data-tag="{tags.value}">{tags.value}</span>
						<span class="topic-tag-count human-readable-number" title="{tags.score}">{tags.score}</span></a>
						<!-- END tags -->
					</div>
					
					
				</div>
	
				<div class="btn-wrap-group post-tools">
					<div class="btn-wrap">
						<a component="post/reply" href="#" class="add no-select <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->"></i>
						<a component="post/reply" href="#" class="btn btn-circle btn-primary no-select <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">[[topic:reply]]</a>
					</div>
					<div class="btn-wrap hidden">
						<a component="post/quote" href="#" class="btn btn-sm btn-circle btn-primary no-select <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">[[topic:quote]]</a>
					</div>
				</div>
				</div>
				<!-- ENDIF @first -->
				<!-- END posts -->
			</div>
		</div>
	</div>
</div>

<div class="topic container">

	<div component="topic/deleted/message" class="alert alert-warning<!-- IF !deleted --> hidden<!-- ENDIF !deleted -->">[[topic:deleted_message]]</div>

	<hr class="visible-xs" />

	<div class="row">
	<div class="col-xs-12 col-sm-8 col-md-8">
	<div class="posts-comments clearfix">
		<i class="material-icons">comment</i>
		<strong>{postcount}</strong> comments
	</div>
	<ul component="topic" class="posts" data-tid="{tid}">
		<!-- BEGIN posts -->
		<!-- IF !@first -->
			<li component="post" class="<!-- IF posts.deleted -->deleted<!-- ENDIF posts.deleted -->" <!-- IMPORT partials/data/topic.tpl -->>
				<a component="post/anchor" data-index="{posts.index}" name="{posts.index}"></a>

				<meta itemprop="datePublished" content="{posts.relativeTime}">
				<meta itemprop="dateModified" content="{posts.relativeEditTime}">
				
				<!-- IMPORT partials/topic/post.tpl -->
			</li>
		<!-- ENDIF !@first -->
		<!-- END posts -->
	</ul>
	</div>
	
	<div class="col-xs-12 col-sm-4 col-md-4">
		<!-- 
			TODO: Implement sidebar trending, popular, or
			some widget here for the purpose of filling 
			in this white space. You can also place
			an advertisement here if you'd like to do so.
		-->
	</div>
	</div>

	<div class="post-bar hidden">
		<!-- IMPORT partials/post_bar.tpl -->
	</div>

	<!-- IF config.usePagination -->
	<!-- IMPORT partials/paginator.tpl -->
	<!-- ENDIF config.usePagination -->

	<div class="visible-xs visible-sm pagination-block text-center">
		<div class="progress-bar"></div>
		<div class="wrapper">
			<i class="fa fa-2x fa-angle-double-up pointer fa-fw pagetop"></i>
			<i class="fa fa-2x fa-angle-up pointer fa-fw pageup"></i>
			<span class="pagination-text"></span>
			<i class="fa fa-2x fa-angle-down pointer fa-fw pagedown"></i>
			<i class="fa fa-2x fa-angle-double-down pointer fa-fw pagebottom"></i>
		</div>
	</div>
</div>
<!-- IF !config.usePagination -->
<noscript>
	<!-- IMPORT partials/paginator.tpl -->
</noscript>
<!-- ENDIF !config.usePagination -->