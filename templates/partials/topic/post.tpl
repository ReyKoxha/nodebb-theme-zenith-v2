<div class="post-wrapper clearfix">
	<div class="post-avatar">
	<div class="icon pull-left">
		<a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">
			<!-- IF posts.user.picture -->
			<img component="user/picture" data-uid="{posts.user.uid}" src="{posts.user.picture}" align="left" itemprop="image" />
			<!-- ELSE -->
			<div component="user/picture" data-uid="{posts.user.uid}" class="user-icon" style="background-color: {posts.user.icon:bgColor};">{posts.user.icon:text}</div>
			<!-- ENDIF posts.user.picture -->
			<i component="user/status" class="fa fa-circle status {posts.user.status}" title="[[global:{posts.user.status}]]"></i>
		</a>
	</div>
	</div>
	<div class="post-header">
		<span class="post-header-head">
		<strong>
			<a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->" itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}">{posts.user.username}</a>
		</strong>

		<!-- //IMPORT partials/topic/badge.tpl -->

		<!-- IF posts.user.banned -->
		<span class="label label-danger">[[user:banned]]</span>
		<!-- ENDIF posts.user.banned -->

		<div class="visible-xs-inline-block 
					visible-sm-inline-block 
					visible-md-inline-block 
					visible-lg-inline-block">
			<a class="permalink" href="{config.relative_path}/topic/{slug}/{function.getBookmarkFromIndex}"><span class="timeago" title="{posts.timestampISO}"></span></a>
			
			<small data-editor="{posts.editor.userslug}" component="post/editor" class="hidden">[[global:last_edited_by, {posts.editor.username}]] <span class="timeago" title="{posts.editedISO}"></span></small>

			<!-- IF !reputation:disabled --><i class="bullet"></i>
			<small class="post-votes">
				<span component="post/vote-count" data-votes="{posts.votes}">{posts.votes}</span> 
				<span class="post-vote-points">points</span>
			</small>
			<!-- ENDIF !reputation:disabled -->
			
			<!-- 
			<!-- IF posts.toPid -->
			<i class="bullet"></i>
			<button component="post/parent" class="btn btn-xs btn-default hidden-xs" data-topid="{posts.toPid}"><i class="fa fa-reply"></i> <span class="post-topid">@<!-- IF posts.parent.username -->{posts.parent.username}<!-- ELSE -->[[global:guest]]<!-- ENDIF posts.parent.username --></span></button>
			<!-- ENDIF posts.toPid -->
			-->
			
			<span>
				<!-- IF posts.user.custom_profile_info.length -->
				&#124;
				<!-- BEGIN custom_profile_info -->
				{posts.user.custom_profile_info.content}
				<!-- END custom_profile_info -->
				<!-- ENDIF posts.user.custom_profile_info.length -->
			</span>
		</div>
		
		<!-- 
			@TODO: Reimplement this bookmark
			effect back into the post view.
		
		<span class="bookmarked"><i class="fa fa-heart-o"></i></span>
		-->
		
		</span>
		
		<span class="post-header-foot hidden">
		<!-- IF posts.user.signature -->
		<span component="post/signature" data-uid="{posts.user.uid}" class="post-signature">{posts.user.signature}</span>
		<!-- ENDIF posts.user.signature -->
		</span>
	</div>
</div>
<div class="post-content content" component="post/content" itemprop="text">
	{posts.content}
</div>
<div class="post-footer clearfix">
	<div class="post-footer-left pull-left">
		<div class="post-tools">
			<a component="post/reply" href="#" class="no-select <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->"><i class="material-icons">reply</i> [[topic:reply]]</a>
			<a component="post/quote" href="#" class="no-select <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">[[topic:quote]]</a>
			
			<!-- IF !posts.deleted -->
			<!-- IF !reputation:disabled -->
			<i class="bullet"></i>
			<div class="post-votes">
				<a component="post/upvote" href="#" 
					class="<!-- IF posts.upvoted -->upvoted<!-- ENDIF posts.upvoted -->">
					<i class="material-icons">thumb_up</i>
				</a>
				<!-- IF !downvote:disabled -->
				<a component="post/downvote" href="#" 
					class="<!-- IF posts.downvoted -->downvoted<!-- ENDIF posts.downvoted -->">
					<i class="material-icons">thumb_down</i>
				</a>
				<!-- ENDIF !downvote:disabled -->
			</div>
			<!-- ENDIF !reputation:disabled -->
			<!-- ENDIF !posts.deleted -->
		</div>
	</div>
	<div class="post-footer-right pull-right">
		
		<!-- IF !posts.deleted -->
		<div class="post-favourite">
			<a component="post/favourite"  href="#" data-favourited="{posts.favourited}">
			<i component="post/favourite/on" 
			class="material-icons <!-- IF !posts.favourited -->hidden<!-- ENDIF !posts.favourited -->">favorite</i>
			<i component="post/favourite/off" 
			class="material-icons <!-- IF posts.favourited -->hidden<!-- ENDIF posts.favourited -->">favorite_border</i>
				<span component="post/favourite-count" class="favouriteCount" 
				data-favourites="{posts.reputation}">{posts.reputation}</span>
			</a>
		</div>
		<!-- ENDIF !posts.deleted -->
		
		<!-- IMPORT partials/topic/post-menu.tpl -->
		
		<!-- IF !posts.deleted -->
		<!-- IF config.loggedIn -->
		<!-- IF !posts.selfPost -->
			<a component="post/flag" class="post-flag" href="#">
				<i class="material-icons">flag</i>
			</a>
		<!-- ENDIF !posts.selfPost -->
		<!-- ENDIF config.loggedIn -->
		<!-- ENDIF !posts.deleted -->
	</div>
</div>
