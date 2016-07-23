<!-- IF loggedIn -->
<button type="button" class="btn btn-link watch <!-- IF !isIgnored -->hidden<!-- ENDIF !isIgnored -->">
	<i class="fa fa-eye visible-xs-inline"></i>
	<span class="visible-sm-inline visible-md-inline visible-lg-inline">[[category:watch]]</span>
</button>
<button type="button" class="btn btn-link ignore <!-- IF isIgnored -->hidden<!-- ENDIF isIgnored -->">
	<i class="fa fa-eye-slash visible-xs-inline"></i>
	<span class="visible-sm-inline visible-md-inline visible-lg-inline">[[category:ignore]]</span>
</button>
<!-- ENDIF loggedIn -->