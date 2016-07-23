<li component="categories/category" data-cid="{../cid}" data-numRecentReplies="1" 
class="col-md-6 col-sm-12 col-xs-12 list-item clearfix">
	<meta itemprop="name" content="{../name}" />
	<div class="image">
		<span class="image-bg" style="{function.generateCategoryBackground}">
		<div align="center"><i class="fa {../icon} fa-4x" style="padding-top:37.5%;"></i></div>
			<span class="image-bg-color" style="background-color: rgb(255, 255, 255);"></span>
		</span>
		<div data-cid="{../cid}">
			<div id="analytics">
				<div class="row">
					<div class="col-sm-6 text-center">
						<div><canvas id="pageviews:hourly" height="250"></canvas></div>
					</div>
				</div>
			</div>
		</div>
		<div class="overlay">
			<!-- IF ../link -->
			<a class="button" href="{../link}" itemprop="url" target="_blank">View Channel</a>
			<a class="click-buffer" href="{../link}">View Channel</a>
			<!-- ELSE -->
			<a class="button" href="{config.relative_path}/category/{../slug}" itemprop="url">View Channel</a>
			<a class="click-buffer" href="{config.relative_path}/category/{../slug}">View Channel</a>
			<!-- ENDIF ../link -->
			
			<div class="teaser hidden">
				{../description}
			</div>
		</div>
		

	</div>
	<div class="meta">
		<!-- IMPORT partials/categories/link.tpl -->
		
		<p class="date">
			Last updated <strong class="timeago" title="{../teaser.timestampISO}"></strong>
		</p>
		
		<div class="screens-wrap">
			<p class="screens">{../description}</p>
		</div>

		<div class="buttons">
			<a class="button facebook" href="http://www.facebook.com/share.php?u=https://convoe.com/category/{../slug}">
				<span>Share</span>
			</a>
			<a class="button twitter" href="http://twitter.com/share?url=https://convoe.com/category/{../slug}&text={../name}">
				<span>Share</span>
			</a>
		</div>

		<div class="users-container">
			<ul class="users">
				<!-- IF !../link -->
					<!-- //IMPORT partials/categories/lastpost.tpl -->
				<!-- ENDIF !../link -->
			</ul>
		</div>

		<!-- IF ../link -->
		<a class="click-buffer" href="{../link}">View Channel</a>
		<!-- ELSE -->
		<a class="click-buffer" href="{config.relative_path}/category/{../slug}">View Channel</a>
		<!-- ENDIF ../link -->
	</div>
</li>

<div class="stats-wrap">
<p class="stats">
	<!-- IF !../link -->
	<span class="stats">
		<span class="{../unread-class} human-readable-number" 
		title="{../totalTopicCount}">{../totalTopicCount}</span>
		<small>[[global:topics]]</small>
	</span>
	<span class="stats">
		<span class="{../unread-class} human-readable-number" 
		title="{../totalPostCount}">{../totalPostCount}</span>
		<small>[[global:posts]]</small>
	</span>
	<!-- ENDIF !../link -->
</p>
</div>

<div class="col-md-6 col-sm-12 col-xs-12 category-topics">
	<!-- IF !../link -->
	<!-- IMPORT partials/categories/lastpost.tpl -->
	<!-- ENDIF !../link -->
</div>