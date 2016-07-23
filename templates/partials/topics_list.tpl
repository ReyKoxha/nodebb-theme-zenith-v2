<ul component="category" class="topic-list" itemscope itemtype="http://www.schema.org/ItemList" data-nextstart="{nextStart}">
	<meta itemprop="itemListOrder" content="descending">
	<!-- BEGIN topics -->
	<li component="category/topic" class="row clearfix {function.generateTopicClass}" <!-- IMPORT partials/data/category.tpl -->>
		<meta itemprop="name" content="{function.stripTags, title}">

		<div class="col-md-7 col-sm-9 col-xs-10 content">
			<!-- IF topics.thumb -->
				<!-- IF showSelect -->
				<div class="select pull-right" component="topic/select">
				<div class="image pull-right">
					<a href="{config.relative_path}/topic/{topics.slug}">
						<img src="{topics.thumb}" />
					</a>
					<i class="fa fa-check"></i>
				</div>
				</div>
				<!-- ELSE -->
				<div class="image pull-right">
					<a href="{config.relative_path}/topic/{topics.slug}">
						<img src="{topics.thumb}" />
					</a>
				</div>
				<!-- ENDIF showSelect -->
			<!-- ENDIF topics.thumb -->
			
			<!-- 
			<div class="avatar pull-left">
				<!-- IF showSelect -->
				<div class="select" component="topic/select">
					<!-- IF topics.user.picture -->
					<img src="{topics.user.picture}" class="img-circle user-img" />
					<!-- ELSE -->
					<div class="user-icon" style="background-color: {topics.user.icon:bgColor};" title="{topics.user.username}">{topics.user.icon:text}</div>
					<!-- ENDIF topics.user.picture -->
					<i class="fa fa-check"></i>
				</div>
				<!-- ELSE -->
				<a href="{config.relative_path}/user/{topics.user.userslug}" class="pull-left">
					<!-- IF topics.user.picture -->
					<img src="{topics.user.picture}" class="img-circle user-img" />
					<!-- ELSE -->
					<div class="user-icon" style="background-color: {topics.user.icon:bgColor};" title="{topics.user.username}">{topics.user.icon:text} 
					</div>
					<!-- ENDIF topics.user.picture -->
				</a>
				<!-- ENDIF showSelect -->
				
				<i component="user/status" class="status {topics.user.status} hidden"></i>
			</div>
			<!--// -->
			
			<h2 component="topic/header" class="title">
			
				<span component="topic/pinned" class="pin <!-- IF !topics.pinned -->hide<!-- ENDIF !topics.pinned -->">
					<!-- IF topics.pinned -->
					<span class="pin-icon pin-icon-wrapper">
						<span class="fa fa-thumb-tack"></span>
					</span>
					<!-- ENDIF topics.pinned -->
				</span>
				<span component="topic/locked" class="lock <!-- IF !topics.locked -->hide<!-- ENDIF !topics.locked -->">
					<!-- IF topics.locked -->
					<span class="lock-icon lock-icon-wrapper">
						<span class="fa fa-lock"></span>
					</span>
					<!-- ENDIF topics.locked -->
				</span>
				
				
				<!-- IF !topics.noAnchor -->
				<a href="{config.relative_path}/topic/{topics.slug}" itemprop="url">{topics.title}</a><br />
				<!-- ELSE -->
				{topics.title}<br />
				<!-- ENDIF !topics.noAnchor -->
				
				<!-- IF topics.unreplied -->
				<!-- ELSE -->
				<!-- IF topics.teaser.pid -->
				<div class="teaser-content hidden-xs">
					{topics.teaser.content}
				</div>
				<!-- ENDIF topics.teaser.pid -->
				<!-- ENDIF topics.unreplied -->

				<small class="reply hidden-xs hidden-sm"><i class="fa fa-comment-o"></i> <a href="{config.relative_path}/topic/{topics.slug}/{topics.teaser.index}">Add a comment</a>
				
				<i class="bullet"></i>
				</small>
				
				<!-- IF !template.category -->
				<small>
					<a href="{config.relative_path}/category/{topics.category.slug}"><span class="fa-stack fa-lg"><i style="color:{topics.category.bgColor};"class="fa fa-circle fa-stack-2x"></i><i style="color:{topics.category.color};" class="fa {topics.category.icon} fa-stack-1x"></i></span> {topics.category.name}</a>
				</small>
				<i class="bullet"></i>
				<!-- ENDIF !template.category -->

				<small class="hidden-xs">
					<span class="timeago" title="{topics.timestampISO}"></span>
				</small>
				
				<small class="visible-xs-inline">
					<!-- IF topics.teaser.timestamp -->
					<span class="timeago" title="{topics.teaser.timestampISO}"></span>
					<!-- ELSE -->
					<span class="timeago" title="{topics.timestampISO}"></span>
					<!-- ENDIF topics.teaser.timestamp -->
				</small>
				
				<small class="hidden-sm hidden-xs views"> 
				<i class="bullet"></i>
				<span class="human-readable-number" title="{topics.viewcount}">{topics.viewcount}</span> <span>[[global:views]]</span>
				</small>
		
				<small class="from hidden">from <a href="{config.relative_path}/user/{topics.user.userslug}">{topics.user.userslug}</a></small>
			</h2>
			
			<span class="tag-list hidden-xs hidden">
				<!-- BEGIN tags -->
				<a href="{config.relative_path}/tags/{topics.tags.value}"><span class="tag" style="<!-- IF topics.tags.color -->color: {topics.tags.color};<!-- ENDIF topics.tags.color --><!-- IF topics.tags.bgColor -->background-color: {topics.tags.bgColor};<!-- ENDIF topics.tags.bgColor -->">{topics.tags.value}</span></a>
				<!-- END tags -->
				<!-- IF topics.tags.length -->
				<!-- ENDIF topics.tags.length -->
			</span>
		</div>

		<div class="mobile-stat col-xs-2 visible-xs text-right">
			<span class="human-readable-number">{topics.postcount}</span> <a href="{config.relative_path}/topic/{topics.slug}/{topics.teaser.index}"><i class="fa fa-arrow-circle-right"></i></a>
		</div>

		<div class="col-md-3 col-sm-3 teaser hidden-xs">
			<div class="card" style="border-color: {topics.category.bgColor}">
				<!-- IF topics.unreplied -->
				<p>
					<a href="{config.relative_path}/user/{topics.user.userslug}">
						<!-- IF topics.user.picture -->
						<img title="{topics.user.username}" class="user-img" src="{topics.user.picture}" />
						<!-- ELSE -->
						<span title="{topics.user.username}" class="user-icon user-img" style="background-color: {topics.user.icon:bgColor};">{topics.user.icon:text}</span>
						<!-- ENDIF topics.user.picture -->
					</a>
				</p>
				<!-- ELSE -->
				<!-- IF topics.teaser.pid -->
				<p>
					<a href="{config.relative_path}/user/{topics.user.userslug}">
						<!-- IF topics.user.picture -->
						<img title="{topics.user.username}" class="user-img" src="{topics.user.picture}" />
						<!-- ELSE -->
						<span title="{topics.user.username}" class="user-icon user-img" style="background-color: {topics.user.icon:bgColor};">{topics.user.icon:text}</span>
						<!-- ENDIF topics.user.picture -->
					</a>
					<a href="{config.relative_path}/user/{topics.teaser.user.userslug}">
						<!-- IF topics.teaser.user.picture -->
						<img title="{topics.teaser.user.username}" class="user-img" src="{topics.teaser.user.picture}" />
						<!-- ELSE -->
						<span title="{topics.teaser.user.username}" class="user-icon user-img" style="background-color: {topics.teaser.user.icon:bgColor};">{topics.teaser.user.icon:text}</span>
						<!-- ENDIF topics.teaser.user.picture -->
					</a>
					<a class="permalink" href="{config.relative_path}/topic/{topics.slug}/{topics.teaser.index}">
						<span class="timeago" title="{topics.teaser.timestampISO}"></span>
					</a>
				</p>
				<!-- ENDIF topics.teaser.pid -->
				<!-- ENDIF topics.unreplied -->
			</div>
		</div>
		
		<a href="{config.relative_path}/topic/{topics.slug}/{topics.teaser.index}" class="col-md-2 hidden-sm hidden-xs stats">
			<p>
			<span class="human-readable-number" title="{topics.postcount}">{topics.postcount}</span>
			<i class="fa fa-comment-o"></i>
			</p>
		</a>
	</li>
	<!-- END topics -->
</ul>