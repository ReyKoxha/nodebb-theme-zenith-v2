<!-- BEGIN posts -->
<li component="category/posts">
	<a href="{config.relative_path}/topic/{../topic.slug}<!-- IF ../index -->/{../index}<!-- ENDIF ../index -->">
	<span>
				<!-- IF ../user.picture -->
				<img class="topic-avatar" title="{../user.username}" alt="{../user.username}" src="{../user.picture}" style="border-radius:100%;width:44px;"title="{../user.username}"/>
				<!-- ELSE -->
				<span class="topic-avatar" title="{../user.username}" style="border-radius:100%;width:44px;background-color: {../user.icon:bgColor};">{../user.icon:text}</span>
				<!-- ENDIF ../user.picture -->	
		{../topic.title}
		
		<small class="timeago" title="{../timestampISO}"></small>
	</span>
	</a>
</li>
<!-- END posts -->

<!-- IF !../posts.length -->
<li component="category/posts">
	<div class="user-content hidden">
		[[category:no_new_posts]]
	</div>
</li>
<!-- ENDIF !../posts.length -->
