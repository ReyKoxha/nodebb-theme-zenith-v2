			<div data-username="{../username}" data-uid="{../uid}">
				<!-- IF ../picture -->
				<img class="user-img" src="{../picture}">
				<!-- ELSE -->
				<div class="user-icon user-img" style="background-color: {../icon:bgColor};">{../icon:text}</div>
				<!-- ENDIF ../picture -->
				<i component="user/status" title="[[global:{../status}]]" class="fa fa-circle status {../status}"></i>
				<span class="username">{../username}</span>

			</div>